SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF
GO
/******************************************* nvk_tb_CuotasClientesAnual  **********************************************/
IF NOT EXISTS (SELECT 1 FROM SYS.TABLES WHERE NAME = 'nvk_tb_CuotasClientesAnual')
CREATE TABLE dbo.nvk_tb_CuotasClientesAnual
(
Cliente			varchar(10)	not null,
Ejercicio		int not null,
Descuento		float,
CuotaAnual		float,
CuotaMensual	float

CONSTRAINT priCuotasAnuales	PRIMARY KEY(Cliente,Ejercicio)

)
GO
--select dbo.nvk_fn_DescuentoCliente (126036)
-- Agregar en VentaD Tabla valor por omision
/******************************************* nvk_fn_DescuentoCliente  **********************************************/
IF EXISTS (SELECT 1 FROM SYS.OBJECTS WHERE NAME = 'nvk_fn_DescuentoCliente')
DROP FUNCTION dbo.nvk_fn_DescuentoCliente
GO
CREATE FUNCTION dbo.nvk_fn_DescuentoCliente(@Id	int)
RETURNS FLOAT
AS
BEGIN
DECLARE @Descuento	float


SELECT
	@Descuento = ntcca.Descuento
FROM
	Cte c
LEFT JOIN Venta v ON v.Cliente = c.Cliente 
LEFT JOIN nvk_tb_CuotasClientesAnual ntcca ON c.Cliente = ntcca.cliente
WHERE V.ID= @ID
AND YEAR(v.FechaEmision) = ntcca.Ejercicio 


	RETURN @Descuento
END
GO
/******************************************* nvk_xp_VaidaPreciosDetalle  **********************************************/
IF EXISTS (SELECT 1 FROM Sys.procedures WHERE name = 'nvk_xp_VaidaPreciosDetalle')
DROP PROCEDURE nvk_xp_VaidaPreciosDetalle
GO
CREATE PROC nvk_xp_VaidaPreciosDetalle  @Id     int
AS
BEGIN
       ;


WITH VentaBase AS (
        SELECT v.id, ntcca.Descuento, C.ListaPreciosEsp, vd.Articulo,
               CASE 
                   WHEN C.ListaPreciosEsp = '(Precio Lista)' THEN a.PrecioLista
                   WHEN C.ListaPreciosEsp = '(Precio 1)' THEN a.PrecioLista
                   WHEN C.ListaPreciosEsp = '(Precio 2)' THEN a.Precio2
                   WHEN C.ListaPreciosEsp = '(Precio 3)' THEN a.Precio3
                   WHEN C.ListaPreciosEsp = '(Precio 4)' THEN a.Precio4
                   WHEN C.ListaPreciosEsp = '(Precio 5)' THEN a.Precio5
                   WHEN C.ListaPreciosEsp = '(Precio 6)' THEN a.Precio6
                   WHEN C.ListaPreciosEsp = '(Precio 7)' THEN a.Precio7
                   WHEN C.ListaPreciosEsp = '(Precio 8)' THEN a.Precio8
                   ELSE NULL 
               END AS PrecioLista
        FROM Venta v
        JOIN VENTAD vd ON v.ID = vd.ID
        LEFT JOIN nvk_tb_CuotasClientesAnual ntcca ON v.Cliente = ntcca.Cliente AND ntcca.Ejercicio = YEAR(v.FechaEmision)
        LEFT JOIN Cte c ON c.Cliente = v.Cliente
        LEFT JOIN Art a ON a.Articulo = vd.Articulo 
        WHERE v.ID = @Id
    ),
    Diferencia AS (
        SELECT vd.Id,
                vb.Articulo,
                vd.Renglon,
                vd.RenglonID,
               (vb.PrecioLista - (ISNULL(vb.Descuento,0) * vb.PrecioLista)/100) AS PrecioMinimo,
               (vd.Precio - (vd.Precio * ISNULL(vd.DescuentoLinea,0))/100) AS PrecioVenta
        FROM VentaBase vb
        JOIN VentaD vd ON vd.ID = vb.id AND vd.Articulo = vb.Articulo
        JOIN Art a ON a.Articulo = vb.Articulo
    )

    --SELECT * FROM Diferencia where PrecioVenta < PrecioMinimo

    UPDATE VentaD set DescripcionExtra = 'Por Debajo del Precio Permitido '+ (CONVERT(VARCHAR(10),(PrecioMinimo-PrecioVenta)))
    from VentaD vd, Diferencia d
    where vd.ID = d.ID 
    AND vd.Renglon=d.Renglon
    and vd.RenglonID = d.RenglonID
    and PrecioVenta < PrecioMinimo
RETURN
END
GO
/******************************************* xpAntesAfectar  **********************************************/
IF EXISTS (SELECT 1 FROM Sys.procedures WHERE name = 'xpAntesAfectar')
DROP PROCEDURE dbo.xpAntesAfectar
GO
CREATE PROCEDURE dbo.xpAntesAfectar       
@Modulo                     char(5),                                                                                                            
@ID                         int,                                                                                                            
@Accion                     char(20),                                                                                                            
@Base                       char(20),                                                                                                            
@GenerarMov                 char(20),                                                                                                            
@Usuario                    char(10),                                                                                                            
@SincroFinal                bit,                                                                                                            
@EnSilencio                 bit,                                                                                                            
@Ok                         int    OUTPUT,                                                                                                            
@OkRef                      varchar(255)  OUTPUT,    
@FechaRegistro              datetime                                                                                                            
AS BEGIN                                                                                                           
                                                                                                          
                                                                                                          
 DECLARE                                                                                                          
 --@CLAVE VARCHAR (20),                                                                                                          
 @ESTATUS VARCHAR (20),                                                                                                          
 @MOV  VARCHAR(50),                                                                    
 @MovID VARCHAR (20),                                                                     
 @MovTipo VARCHAR(20),        
 @OrigenTipo Varchar(10),                                                                                                         
 @Origen varchar(20),                                                                                                        
 @OrigenID    varchar(20),        
 @IDAplica      int,        
 @Movimiento varchar (20),                                                                                                        
 @Clave   Varchar (10),                                                                                                        
 @Empresa  Varchar (5),                                                                                                        
 @Sucursal  Int,                                                                                                        
 @CentroCosto Varchar (50),                                                                                                        
 @FormadePago   VARCHAR(30),                                                                                                      
 @CtaDinero  varchar(10),                                                                                                      
 @FormaCobro varchar(50),                                                                                                    
 @CtePais varchar(50),                                      
 @PesoTotal float,                                                                                                
 @ClavePresupuestal varchar (50),                      
 @PesoFaltante float,                         
 @AnticipoSaldo float,                            
 @Secompra int,                                          
 @Articulo varchar(20),                                        
 @Prov varchar(10),                              
 @ALM   VARCHAR(10),                        
 @ALMADESTINO VARCHAR(10),                                      
 @CERRADO BIT      ,                  
 @situacion  VARCHAR(50),                  
 @MovClave     varchar(20),                  
 @FechaEmision datetime,        
 @Renglon     float,        
 @RenglonSub  int,        
 @FechaCaducidad    datetime,        
 @Referencia        varchar(50),        
 @CteArt            bit,        
 @Cliente           varchar(10),        
 @EnviarA           int,        
 @Direccion         varchar(100),        
 @CP                varchar(15),        
 @Delegacion        varchar(100),        
 @Colonia           varchar(100),        
 @Estado            varchar(100),        
 @Poblacion         varchar(100),        
 @Pais              varchar(100),        
 @SATExportacion    varchar(100),        
 @Subdivision       varchar(100),        
 @Incoterm          varchar(100),        
 @MotivoTraslado    varchar(100),        
 @TipoOperacion     varchar(100),        
 @Departamento      varchar(50),        
 @UsuarioSucursal   int,        
 @CantidadExcede    float,    
 @INFORCostoIndirecto    FLOAT,    
 @Agente   varchar(10)    
            ----              
     IF @Accion IN ( 'AFECTAR','VERIFICAR') AND @Modulo IN ('COMS','INV')              
                  
      BEGIN              
              
      EXEC  MURSPACTFECHANVK  @Modulo,@ID              
              
      END              
              
 IF @Accion IN ( 'AFECTAR','VERIFICAR','AUTORIZAR')                                                                       
                                                            
  BEGIN                                      
                                        
IF @Modulo='GAS'                        
BEGIN                        
                        
SELECT @Clave=M.CLAVE,@ESTATUS=G.Estatus                        
FROM GASTO G LEFT OUTER JOIN MOVTIPO M ON G.MOV=M.MOV AND M.MODULO='GAS'                        
WHERE ID=@ID                     
                    
--                     
                        
IF @ESTATUS='SINAFECTAR' AND @CLAVE='GAS.S'                        
BEGIN                        
                    
    --SELECT @OK=66,@OKREF='AQUI ES'                    
EXEC MURSPVALIDAGASTOS   @ID,@OK OUTPUT,@OKREF OUTPUT                        
                        
END                        
                        
                        
END                     
    ------------------------- SERIE/LOTE ENTRADA COMPRA CALIDAD  ------------------------------------                                 
                                         
  IF @Modulo='COMS'                                           
  BEGIN                                         
                                        
 SELECT @MOV=Mov, @ESTATUS=ESTATUS FROM Compra                                      
 WHERE ID=@ID                                      
                                        
  IF @MOV IN ('Entrada Compra','Entrada Compra Imp') AND @ESTATUS='SINAFECTAR'                                      
  BEGIN                                      
   EXEC COMPSERIELOTECALIDADAPL @ID,@OK OUTPUT,@OKREF OUTPUT                                       
  END        
          
  IF @Mov IN ('ENTRADA COMPRA','eNTRADA IMPORTACION')  AND @ESTATUS = 'SINAFECTAR'        
   BEGIN        
        
      EXEC MURSPVALIDAENTRADACOMS @ID,@OK OUTPUT,@OKREF OUTPUT         
   END 
                           
  END                                         
                                      
  ------------------------- FIN SERIE/LOTE ENTRADA COMPRA CALIDAD ---------------------------------                           
                                        
                                  
                                              
 ------------------------- ALMACEN CERRADO INVENTARIO FISICO  ------------------------------------               
   IF @Modulo IN ('COMS','INV','VTAS')                                          
                                             
   BEGIN                                          
                                          
          IF @Modulo='VTAS'                                
       BEGIN    
        
       SELECT @ALM =ALMACEN,@MOV=Mov,@ESTATUS=ESTATUS     
      FROM Venta     
  WHERE ID=@ID    
    
       SELECT @CERRADO = ISNULL(CERRARALM,0) FROM Alm WHERE Almacen=@ALM                                          
                                          
                                                 
  IF @CERRADO=1  AND @MOV='FACTURA' AND @ESTATUS='SINAFECTAR'                                          
                                          
       SELECT @Ok=666,@OkRef='EL ALMACEN ESTA CERRADO'    
    
    /*JARC 18/12/2025 sustituye al MURSPVALIDAPRECIOSNVK*/    
    
       IF  @MOV='FACTURA' AND @ESTATUS='SINAFECTAR' AND @Ok IS NULL    
  BEGIN        
   BEGIN                              
               EXEC  dbo.xpValidaDescuentoLinea  @ID , @OK OUTPUT, @OKREF OUTPUT                              
   END    
              
    IF @Ok IS NULL    
       
     BEGIN                                  
      EXEC MURSPGENERAPLICACIONVTASNAVITEK  @ID             
     END     
  END    
       END                                          
                                          
          IF @Modulo='COMS'                              
       BEGIN                                          
       SELECT @ALM =ALMACEN ,@MOV=Mov,@ESTATUS=ESTATUS FROM COMPRA WHERE ID=@ID                                           
       SELECT @CERRADO = ISNULL(CERRARALM,0) FROM Alm WHERE Almacen=@ALM                                          
                                                 
             IF @CERRADO=1 AND @MOV='Entrada Compra' AND @ESTATUS='SINAFECTAR'                                          
                                          
       SELECT @Ok=666,@OkRef='EL ALMACEN ESTA CERRADO'                                          
       END                                          
                 IF @Modulo='INV'                                          
       BEGIN                                          
       SELECT @ALM =ALMACEN,@ALMADESTINO=AlmacenDestino,@ESTATUS=ESTATUS,@MOV=mov FROM INV WHERE ID=@ID                                          
                                          
       SELECT @CERRADO = ISNULL(CERRARALM,0) FROM Alm WHERE Almacen=@ALM                                          
                                          
             IF @CERRADO=1 AND @ESTATUS='SINAFECTAR' AND @MOV<>'Inventario Fisico'                                          
                                          
       SELECT @Ok=4466,@OkRef='EL ALMACEN ESTA CERRADO'                              
       END                                          
    
   END                                          
        
  ------------------------ FIN ALMACEN CERRADO INVENTARIO FISICO -----------------------------------                                      
                              
         IF @MOV IN (select Mov from MovTipo where Modulo='vtas' and SubClave='VTAS.PNVK') AND @ESTATUS='SINAFECTAR'                                                                                                                                          

         BEGIN                       
   EXEC MURSPORDENADETALLEVTAS @ID         
           
   EXEC MURSPVALIDAPRECIODESCUENTO  @ID,@OK OUTPUT,@OKREF OUTPUT        
                                                                              
         EXEC MURSPVALIDAPESOENPEDIDOS  @ID,@OK OUTPUT,@OKREF OUTPUT                                                                                
                               
   EXEC  MURSPVALIDADUPLICADOSVTAS  @ID,@OK OUTPUT,@OKREF OUTPUT                                                                         
                                       
   EXEC MURSPAGREGAANEXOSART  @ID                                                                            



   --EXEC MURSPVALIDAPRECIOSDETALLE  @ID
    --JARC Vaida Precios con nueva pólitica de precios sustituye MURSPVALIDAPRECIOSDETALLE
     EXEC nvk_xp_VaidaPreciosDetalle @ID  

   exec MURSPVALIDAPRECIOSDETALLEdir  @id,@usuario,@ok output, @okref  output                         
                         
   EXEC MURSPCOPIAPRECIOSVTAS  @ID                      
                                              
   UPDATE  VENTAD                                              
   SET ListaPrecioDetalle=Instruccion                                              
   WHERE ID=@ID                                              
      END                                                                                
                           
                                                                     
   -- JARC END                                                                                
        
                                                                                
                                                                                                          
  IF  @Modulo = 'COMS'                                                                                                           
   BEGIN                                                        
    SELECT @MOV=Mov, @ESTATUS = Estatus FROM Compra                                                                                                          
    WHERE @ID = ID                          
                                                                 
                                                                
 IF @ESTATUS='SINAFECTAR'  AND @MOV IN (  SELECT Mov FROM MovTipo WHERE Modulo='COMS' AND Clave IN('COMS.O','COMS.R'))                                                                
 BEGIN                                                                
                                                            
   IF EXISTS( SELECT * FROM CompraD WHERE NULLIF(ContUso,'') IS NULL AND ID=@ID )                                                                
     BEGIN                                                                
     SELECT @Ok=777,@OkRef='DEBES CAPTURAR EL CENTRO DE COSTOS EN EL DETALLE'                                                 
                                                                
END                                                                
              
                                                                
 END                                                        
                        
   IF @Mov LIKE '%Requisicion Imp%'  AND @ESTATUS = 'SINAFECTAR'                                                                                      
      BEGIN                                                                                                          
                                             
     UPDATE Compra                                         
     SET Requisicion = @ID                                                                                                          
     WHERE @ID = ID                                                                                                          
    END                                                                                                           
   END                       
        
--------------------------- Costo por Prov Orden Compra -------------------------------------------                                 
   IF @Accion IN('VERIFICAR')                                                
   BEGIN                                                
    IF @Modulo='COMS'                                                
    BEGIN                                                 
    SELECT @Prov=C.Proveedor FROM Compra C                                                
    WHERE @ID=C.ID                                                
     IF @MOV LIKE 'Orden Compra%' AND @ESTATUS='SINAFECTAR'                                                
     BEGIN                                                
     UPDATE COMPRAD                                                 
     SET COSTO=DBO.MURSPFNPRECIOSCOMPRAS(C.Proveedor,D.ARTICULO)--/C.TIPOCAMBIO               SE REALIZA EL CAMBIO DE TABLA A LISTAPRECIOD                                  
     FROM CompraD D ,Compra c                
  WHERE  C.ID=D.ID                
  AND @ID=D.ID                                               
     AND ISNULL(D.costo,0)=0                                          
  ---   SELECT * FROM ARTPROV                                        
                                        
 END                                                
    END                                                
   END                                                 
----------------------- Fin Costo por Prov Orden Compra -------------------------------------------                                                
--------------------------- Costo Obligatorio Orden Compra ----------------------------------------                                          
  IF @Accion IN('AFECTAR')                                                
  BEGIN                                                
   IF  @Modulo = 'COMS'                                                                                                     
   BEGIN                                                                
    SELECT @MOV=Mov, @ESTATUS = Estatus, @Articulo=CD.Articulo FROM Compra C                                                  
 LEFT JOIN CompraD CD ON C.ID=CD.ID                                                
    WHERE @ID = C.ID AND ISNULL(costo,0)=0                                                               
    IF @ESTATUS='SINAFECTAR'  AND @MOV IN ( SELECT Mov FROM Compra WHERE Mov LIKE 'Orden Comp%')                                                        
    BEGIN                                                          
     IF EXISTS( SELECT * FROM CompraD WHERE NULLIF(Costo,'') IS NULL AND ID=@ID )                                                 
     BEGIN                                                          
     SELECT @Ok=777,@OkRef='FALTA CAPTURAR COSTO EN EL ARTICULO: '+ @Articulo                      
  END                                          
    END               
   END          
  END                              
                                              
--Validacion Centro de costos Ventas y Gastos [JZ]                                                                       
IF @Accion='Afectar'                                                                                                              
BEGIN                                                                                                        
If @Modulo='GAS'                                                                       
BEGIN                                                                       
select @Estatus=Estatus, @Movimiento=V.Mov, @Clave=mt.Clave, @Empresa=v.Empresa, @Sucursal=v.Sucursal,  @CentroCosto=ISNULL(NULLIF(gd.ContUso, ' '), 'NA'),     @Origen=ISNULL(NULLIF(v.Origen, ' '), 'NA')                                                   
  From Gasto  V                           
left join GastoD gd on v.ID=gd.ID                     
left join MovTipo mt on V.Mov=mt.Mov and mt.Modulo='GAS'                                                                                               
where v.ID=@ID                                                                                            
IF @Clave in ('GAS.S') and @Estatus='SINAFECTAR'                                                               
BEGIN                                                                                                           
IF @CentroCosto='NA'                                                                                                           
BEGIN                                                                                                
     Select @ok=10065, @OkRef='Coloca Centro de Costos'                                                                                                           
  END                                                                                                  
/*BEGIN                                                                                                           
IF @ClavePresupuestal='NA'                             
BEGIN                                                                                                       
     Select @ok=10065, @OkRef='Coloca Clave Presupuestal'                                                                                                           
  END                                                                                                          
                                                                                       
  END*/                                                                                      
  END                                               
  IF @Clave='GAS.G' and @Estatus='SINAFECTAR' and @Origen='NA'                                                                                                         
  BEGIN                                                                                       
 Select @ok=10065, @OkRef='El Gasto debe tener una solicitud origen'                                                                                                          
  END                                                                                                   
  END                                                                                                
  end                                                              
  end                                                           
        
 --IF @Accion='Afectar'                                                                                               
 --BEGIN                                                               
--If @Modulo='VTAS'    
--BEGIN                                          
--select @Estatus=Estatus, @Movimiento=V.Mov, @Clave=mt.Clave, @Empresa=v.Empresa, @Sucursal=v.Sucursal,  @CentroCosto=ISNULL(NULLIF(vd.ContUso, ' '), 'NA'),    @Origen=ISNULL(NULLIF(v.Origen, ' '), 'NA')                                                  
--From Venta  V                                            
--left join VentaD vd on v.ID=vd.ID                                                                                                          
--left join MovTipo mt on V.Mov=mt.Mov and mt.Modulo='VTAS'                                                                                                          
--where v.ID=@ID                            
--IF @Clave in ('VTAS.P') and @Estatus='SINAFECTAR'                                                                                                          
--BEGIN                              
--IF @CentroCosto='NA'                                                                                                           
--BEGIN                                                  
--     Select @ok=10065, @OkRef='Coloca Centro de Costos'                                                                   
--  END                                                    
--  END                                                                                                
--  end                                                   
                                                                                           
  --Fin de la Validacion                                                                                                        
--------------------------------------------------------------Validación CXC Yisus -----------------                                                                                                      
        
If @Accion IN ('Afectar'   ,'VERIFICAR')        
begin                                                                             
 If @Modulo='CXC'                                                          
 begin    
     
  select     
  @CtaDinero=ISNULL(NULLIF(c.CtaDinero, ' '), 'NA'),     
  @FormaCobro=ISNULL(NULLIF(c.FormaCobro, ' '), 'NA'),    
  @Movimiento=c.Mov,                  
  @ESTATUS=c.Estatus  ,    
  @situacion= COALESCE(SITUACION,''),-- ISNULL(SITUACION,''),     
  @Origen = Origen,    
  @Cliente = Cliente,    
  @Clave = MT.Clave    
  from Cxc c     
  JOIN MovTipo mt on c.Mov=mt.Mov and mt.Modulo = @Modulo     
  where id=@ID                  
                           
                    
IF @Movimiento='cobro' AND @ESTATUS='SINAFECTAR'              
BEGIN              
              
              
EXEC MURSPACTUALIZAFECHACOBRO  @ID             
              
END              
          
    IF @Movimiento='Anticipo T' AND @ESTATUS='SINAFECTAR'  AND @situacion='SIN CHEQUE'                  
    BEGIN                    
      UPDATE CXC                     
      SET ORIGEN='Reasignacion',OrigenTipo='CXC'                    
      WHERE ID=@ID                    
                    
    END                    
                    
    IF @Movimiento IN ('REASIGNACION' ,'REASIGNACION T')AND @ESTATUS='SINAFECTAR'          
    BEGIN             
      UPDATE CXC                           
      SET FechaEmision=dbo.fnFechaSinHora(GETDATE())                          
      WHERE ID=@ID                          
                          
    END             

  If @Movimiento='Cobro Cte' and @ESTATUS='SINAFECTAR'                                                                                                      
  BEGIN                                                     
   IF @CtaDinero='NA'                                                                                    
   begin                                                                                       
    Select @ok=10065, @OkRef='Colocar Cuenta Dinero'          
   end                                                                           
   IF @FormaCobro='NA'                                                                                                      
   BEGIN                                                                                                  
    Select @ok=10065, @OkRef='Forma Cobro'                                                                                     
   END                                                              
  END                                      
 end         
     
    
 --JARC 05/12/2025 Actualiza el agente en los cobros si el agente del origen es diferente al agente del cobro    
    
 IF @Clave IN ('CXC.ANC','CXC.C','CXC.NC')    
 BEGIN    
    
SELECT TOP 1 @Agente = e1.Agente    
  FROM Cxc e    
 INNER JOIN CxcD d ON e.ID=d.ID AND COALESCE(d.Aplica,'') <> '' AND COALESCE(d.AplicaID,'') <> ''    
 INNER JOIN Cxc e1 ON e1.Mov=d.Aplica AND e1.MovID = d.AplicaID AND e1.Agente <> e.Agente    
 WHERE e.id=@ID    
    
  IF COALESCE(@Agente,'') <> ''    
  BEGIN    
  UPDATE Cxc SET Agente = @Agente WHERE ID = @ID    
  END    
 END    
    
end     

---------------------------COMS--CC-(AO)--------------                               
-- IF @Accion='Afectar'                                                                                                
-- BEGIN                                                                                                           
--If @Modulo='COMS'                       
--BEGIN                                                  
--select @Estatus=Estatus, @Movimiento=C.Mov, @Clave=mt.Clave, @Empresa=C.Empresa, @Sucursal=C.Sucursal,  @CentroCosto=ISNULL(NULLIF(Cd.ContUso, ' '), 'NA'),     @Origen=ISNULL(NULLIF(C.Origen, ' '), 'NA')                                                 
--From Compra C                         
--left join CompraD cd on c.ID=cd.ID                                                                               
--left join MovTipo mt on c.Mov=mt.Mov and mt.Modulo='COMS'                                                                                                          
--where C.ID=@ID                                                                                                       
--IF @Clave in ('COMS.R','COMS.O') and @Estatus='SINAFECTAR'                                                                                                          
--BEGIN                                                         
--IF @CentroCosto='NA'                                                                         
--BEGIN                                                              
--     Select @ok=10065, @OkRef='Coloca Centro de Costos'                                                                                                           
--  END                                                                                                
--  END                                                                                                
--  end                                                                                                
--  end                                                                            
---------------------------------------------Fin Validación------------------------------                                                               
 /*******Inicio Copiar MovId Orden Compra********/                                                                                   
IF  @Modulo = 'COMS'                                                                                
   BEGIN                     
    SELECT @MOV=Mov, @ESTATUS = Estatus FROM Compra                                                                                                          
WHERE @ID = ID                                                                             
                        
   IF @Mov LIKE '%Orden%'  AND @ESTATUS = 'SINAFECTAR'                                                                                                          
      BEGIN                                                                       
                                                                                                        
     UPDATE Compra                                    
     SET MovIdOC = @ID                               
     WHERE @ID = ID                                                                                          
    END                                                                                                   
   END                                                                                                                 
 /*******Fin Copiar MovId Orden Compra********/                                                        
                                                             
 /*******Inicio Copiar Saldo de anticipo JZ********/                                                             
 --IF @Modulo = 'CXC'                                                           
 --BEGIN                                                 
 -- select top 1 @AnticipoSaldo= AnticipoSaldo ,@ESTATUS = Estatus,@MOV= Mov from cxc where @ID=ID                                                            
 -- IF @MOV='Factura Anticipo' and @ESTATUS='SINAFECTAR'                                                            
--  Begin         
 --   UPDATE Cxc SET AnticipoAplicar= @AnticipoSaldo where ID=@ID                                                            
 --  End                                                            
 --END                                                            
                                                            
 /*******Fin Copiar Saldo de anticipo JZ********/                           
                                                          
  ------------------------ VALIDACION ART CHECK SE COMPRA -----------------------------------------                                                                
                                                             
 IF @Modulo='COMS'                                                            
 BEGIN                                                             
 SELECT @MOV=C.Mov, @Articulo=A.Articulo FROM Compra C                                                            
 LEFT JOIN CompraD CD ON C.ID=CD.ID                                         
 LEFT JOIN Art A ON CD.Articulo=A.Articulo                                                            
 WHERE @ID=C.ID AND A.SeCompra=0                                                          
  IF EXISTS (SELECT * FROM Compra C LEFT JOIN CompraD CD ON C.ID=CD.ID                    
    LEFT JOIN Art A ON CD.Articulo=A.Articulo                                                            
    WHERE @ID=C.ID AND @MOV IN  ('Requisicion','Requisicion Imp' ,'Orden Compra', 'Orden Compra Imp') AND A.SeCompra=0)                                                            
  BEGIN                                                                      
       Select @ok=10065, @OkRef='El Articulo '+@Articulo+' No Se Compra'                            
  END                                                             
  END                                                          
  ------------------------- FIN VALIDACION ART CHECK SE COMPRA ------------------------------------                                   
  --------------------------------------- TIPO ISRRESICO ------------------------------------------                     
  IF @Modulo = 'COMS'                                            
  BEGIN                                             
                                            
  SELECT @Prov = Proveedor  FROM Compra WHERE  ID=@ID                                      
      
  DECLARE @REGIMENFIS VARCHAR (30) , @lenrfc  int             
    
  SELECT @REGIMENFIS=ISNULL (FiscalRegimen,'666'),@lenrfc=len(isnull(rfc,'na')) FROM Prov WHERE Proveedor=@PROV                                            
                                            
IF @REGIMENFIS = 626       and @lenrfc=13                                    
  BEGIN                                            
 UPDATE CompraD                                            
 SET TipoRetencion1 = 'ISRRESICO',                                 
 Retencion1 = (SELECT Tasa FROM TipoRetencion1 WHERE TipoRetencion = 'ISRRESICO')                                            
 WHERE ID=@ID                                             
                                            
  END                                  
                                          
  IF @REGIMENFIS <> 626                                           
  BEGIN                                          
   UPDATE CompraD                                            
   SET TipoRetencion1 = '', Retencion1 = Null WHERE ID=@ID                                            
  END                                          
                                          
  END                                 
  ------------------------------------- FIN TIPO ISRRESICO --------------------------------------          
                                              
  -----------multiplo compra ALOO----------                                            
              --if @modulo='coms'                                              
                                              
  --begin                                             
  --select @mov=mov , @estatus=estatus from compra where id=@id                                            
                                            
  --if @mov in (select mov from movtipo where modulo='coms' and SubClave='coms.r') and @estatus='SINAFECTAR'                                            
                                            
  --begin                                             
                                            
  --execute almultiplo  @ID,@OK OUTPUT,@OKREF OUTPUT                                        
                                            
--end                                            
  --end                                            
                                            
  -----fin multiplo compra                                            
        
  IF @Modulo in ('VTAS','COMS','INV') AND @Ok IS NULL        
  BEGIN        
        
    IF @Modulo = 'VTAS' AND @Accion in ('VERIFICAR', 'AFECTAR')        
    BEGIN        
      SELECT @Cliente = Cliente, @EnviarA = EnviarA, @Mov = Mov        
        FROM Venta        
       WHERE ID = @ID        
        
      IF @Mov IN ('Carta Porte Traslado')        
      BEGIN        
        IF @EnviarA IS NULL        
          SELECT @Ok = 10060, @OkRef = 'Falta capturar la Sucursal del Cliente'        
        ELSE        
        BEGIN        
          SELECT @Direccion = ISNULL(Direccion, ''), @CP = ISNULL(CodigoPostal, ''), @Delegacion = ISNULL(Delegacion, ''), @Estado = ISNULL(Estado, ''), @Poblacion = ISNULL(Poblacion, ''), @Pais = ISNULL(Pais, '')        
            FROM CteEnviarA        
           WHERE Cliente = @Cliente        
             AND ID = @EnviarA        
        
          IF @Direccion = '' OR @CP = '' OR @Delegacion = '' OR @Estado = '' OR @Poblacion = '' OR @Pais = ''        
            SELECT @Ok = 10060, @OkRef = 'Falta capturar la Direccion o Código Postal o Delegación o Estado o Población o País de la Sucursal del Cliente'        
        END        
      END        
        
      IF @Mov IN ('PSE')        
      BEGIN        
        SELECT @SATExportacion = NULLIF(RTRIM(SATExportacion), ''),        
                @Subdivision    = NULLIF(RTRIM(Subdivision), ''),        
                @Incoterm       = NULLIF(RTRIM(Incoterm), ''),        
                @MotivoTraslado = NULLIF(RTRIM(MotivoTraslado), ''),        
                @TipoOperacion  = NULLIF(RTRIM(TipoOperacion), '')        
          FROM VentaCFDIRelacionado        
          WHERE ID = @ID        
        
        IF @SATExportacion IS NULL OR @Subdivision IS NULL OR @Incoterm IS NULL OR @MotivoTraslado IS NULL OR @TipoOperacion IS NULL        
          SELECT @Ok = 10060, @OkRef = 'Falta capturar Incoterm o SubDivision o Motivo Traslado o Tipo Operación o Sat Exportación'        
      END        
/*     
Dirección        
CP        
Delegación o municipio        
Colonia        
Estado        
Población en caso de que no tenga dato en el catálogo del SAT, que acepte texto capturado        
País        
        
*/        
        
              
    END        
            
    EXEC spMovInfo @ID, @Modulo, @Empresa = @Empresa OUTPUT, @MovTipo = @MovClave OUTPUT, @FechaEmision = @FechaEmision OUTPUT, @Mov = @Mov output                  
    IF (SELECT isnull(CartaPorte, 0) FROM MovTipo where Modulo = @Modulo AND Mov = @Mov) = 1  AND (SELECT CFD_tipoDeComprobante FROM MovTipo where Modulo = @Modulo AND Mov = @Mov)='traslado' AND EXISTS (SELECT TOP 1 ID FROM CFDCartaPorteID WHERE Modulo =@Modulo AND ModuloID = @ID)
      EXEC spCFDCartaPorteValidarInfo @Modulo, @ID, @Ok = @Ok output,  @OkRef = @OkRef output                  
  END                                
  --Esta integracion es para aquellos clientes que dan 100% de Descuento en los Articulos del detalle de Ventas, y sirve para insertar en la tabla de paso el Objeto impuesto 04 para que lo tome de ahi el xml                  
  IF @Modulo = 'VTAS' AND @Accion = 'AFECTAR' AND (SELECT isnull(CFD_tipoDeComprobante, '') FROM MovTipo where Modulo = @Modulo AND Mov = @Mov)<>''                  
    EXEC spMovObjetoImpuesto @ID, 'VTAS', 1                  
        
--RETURN        
--end        
        
--select @Modulo, @accion, @ok        
  IF @Modulo = 'COMS' AND @Accion IN ('VERIFICAR', 'AFECTAR') AND @Ok IS NULL        
  BEGIN        
    EXEC spMovInfo @ID, @Modulo, @MovTipo = @MovTipo OUTPUT        
        
    IF @MovTipo = 'COMS.EI'         
    BEGIN        
      DECLARE crCompraDFC CURSOR FOR        
      SELECT d.Articulo, d.Renglon, d.RenglonSub, s.FechaCaducidad        
        FROM CompraD d        
        JOIN Art a ON d.Articulo = a.Articulo        
        JOIN SerieLoteMov s ON s.Modulo = 'COMS' AND d.ID = s.ID AND d.RenglonID = s.RenglonID AND d.Articulo = s.Articulo AND ISNULL(d.SubCuenta, '') = ISNULL(s.SubCuenta, '')        
       WHERE d.ID = @ID        
         AND a.Tipo IN ('SERIE', 'LOTE')        
        
      OPEN crCompraDFC        
      FETCH NEXT FROM crCompraDFC INTO @Articulo, @Renglon, @RenglonSub, @FechaCaducidad        
      WHILE @@FETCH_STATUS = 0        
      BEGIN        
        UPDATE CompraD SET FechaCaducidad = @FechaCaducidad        
         WHERE ID = @ID        
           AND Renglon = @Renglon        
           AND RenglonSub = @RenglonSub        
        
        FETCH NEXT FROM crCompraDFC INTO @Articulo, @Renglon, @RenglonSub, @FechaCaducidad        
      END        
        
      CLOSE crCompraDFC        
      DEALLOCATE crCompraDFC        
--select FechaCaducidad, * from comprad where id = @ID        
--select @ok = 1        
    END        
  END        
        
  IF @Modulo = 'VTAS' AND @Accion IN ('AFECTAR', 'VERIFICAR') AND @Ok IS NULL        
  BEGIN        
    EXEC spMovInfo @ID, @Modulo, @MovTipo = @MovTipo OUTPUT, @Empresa = @Empresa OUTPUT        
    IF @MovTipo = 'VTAS.VP'        
    BEGIN        
      SELECT @Articulo = NULL        
        
      SELECT @Articulo = MIN(d.Articulo), @Referencia = MIN(e.Mov + ' ' + e.MovID)        
        FROM VentaD d        
        JOIN Venta e ON d.Aplica = e.Mov AND d.AplicaID = e.MovID AND e.Empresa = @Empresa        
        JOIN MovFlujo m ON e.ID = m.OID AND m.OModulo = 'VTAS' AND m.DModulo = 'TMA'        
        JOIN TMA t ON m.DID = t.ID AND t.Estatus = 'PENDIENTE'        
        JOIN TMAD td on t.ID = td.ID AND d.Articulo = td.Articulo        
       WHERE d.ID = @ID        
         AND e.Estatus = 'PENDIENTE'        
         AND ISNULL(td.CantidadPendiente, 0) > 0        
         AND e.Mov IN ('PET', 'PSE', 'PST')        
        
      IF @Articulo IS NOT NULL        
        SELECT @OK = 10060, @OkRef = 'El Movimiento ' + @Referencia + ' tiene Orden Surtido Pendiente, debe cancelarla primero'        
      ELSE     
      BEGIN        
        SELECT @CteArt = ISNULL(CteArt, 0)        
          FROM Usuario         
         WHERE Usuario = @Usuario        
        
        IF ISNULL(@CteArt, 0) = 0        
        BEGIN        
          SELECT @Articulo = MIN(d.Articulo), @Referencia = MIN(e.Mov + ' ' + e.MovID)        
            FROM VentaD d        
            JOIN Venta e ON d.Aplica = e.Mov AND d.AplicaID = e.MovID AND e.Empresa = @Empresa        
            JOIN MovFlujo m ON e.ID = m.OID AND m.OModulo = 'VTAS' AND m.DModulo = 'TMA'        
            JOIN TMA t ON m.DID = t.ID AND t.Estatus IN ('PENDIENTE', 'CONCLUIDO')        
            JOIN TMAD td on t.ID = td.ID AND d.Articulo = td.Articulo        
            JOIN MovFlujo m2 ON m.DID = m2.OID AND m2.OModulo = 'TMA' AND m2.DModulo = 'TMA'        
            JOIN TMA t2 ON m2.DID = t2.ID AND t2.Estatus in ('PENDIENTE', 'CONCLUIDO')        
            JOIN TMAD td2 on t2.ID = td2.ID AND d.Articulo = td2.Articulo        
           WHERE d.ID = @ID        
             AND e.Estatus = 'PENDIENTE'        
        
          IF @Articulo IS NOT NULL        
            SELECT @OK = 10060, @OkRef = 'El Movimiento ' + @Referencia + ' ya tiene surtidos'        
        END        
      END        
        
      IF @Ok IS NULL        
      BEGIN        
        SELECT @Departamento = Departamento, @UsuarioSucursal = Sucursal FROM Usuario WHERE Usuario = @Usuario        
        
        --IF ISNULL(@Departamento, '') <> 'ALMACEN PRODUCTO TERMINADO'        
        IF NOT (ISNULL(@Departamento, '') = 'ALMACEN PRODUCTO TERMINADO' AND @UsuarioSucursal = 3)        
          IF EXISTS(SELECT t.ID        
            FROM VentaD d        
            JOIN Venta e ON d.Aplica = e.Mov AND d.AplicaID = e.MovID AND e.Empresa = 'NVK'        
            JOIN MovFlujo m ON e.ID = m.OID AND m.OModulo = 'VTAS' AND m.DModulo = 'TMA'        
            JOIN TMA t ON m.DID = t.ID AND t.Estatus in ('PENDIENTE', 'CONCLUIDO')        
            JOIN TMAD td on t.ID = td.ID AND d.Articulo = td.Articulo        
           WHERE d.ID = @ID        
             AND e.Estatus = 'PENDIENTE')        
            SELECT @Ok = 10060, @OkRef = 'Usuario restringido'        
      END        
    END -- VP              
  END        
        
  IF @Modulo = 'INV' AND @Accion IN ('VERIFICAR', 'AFECTAR') AND @Ok IS NULL        
  BEGIN        
    EXEC spMovInfo @ID, @Modulo, @MovTipo = @MovTipo OUTPUT, @Sucursal = @Sucursal OUTPUT        
        
    IF @MovTipo = 'INV.OI'        
    BEGIN        
      SELECT @Articulo = NULL        
      SELECT @Articulo = Articulo        
        FROM InvD d        
       WHERE d.ID = @ID    
       GROUP BY Articulo        
       HAVING COUNT(Renglon) > 1        
        
      IF @Articulo IS NOT NULL        
        SELECT @Ok = 10060, @OkRef = 'El Articulo ' + @Articulo + ' esta repetido'        
      ELSE        
      IF @Sucursal IN (4,5)        
      BEGIN        
        SELECT @Articulo = MIN(d.Articulo)        
          FROM InvD d        
          JOIN Art t ON d.Articulo = t.Articulo        
          JOIN ArtUnidad r ON d.Articulo = r.Articulo AND r.Unidad LIKE '%CAJA%'          
         WHERE d.ID = @ID        
           AND d.Cantidad/r.Factor <> ROUND(d.Cantidad/r.Factor, 0)        
        
        IF @Articulo IS NOT NULL        
          SELECT @Ok = 10060, @OkRef = 'La cantidad del Artículo ' + @Articulo + ' no es factor de Caja'        
      END        
    END        
        
  END        
        
       ----------------------- COPIA INV FISICO-------------------------                   
                    
  IF  @Modulo = 'INV'                                                                                              
   BEGIN                                                                                                                        
        /*              
 SELECT @MOV=Mov, @ESTATUS=Estatus, @Cantidad=ad.disponible FROM INV                    
   left join INVD  on INV.ID=INVD.ID                      
  left join artdisponible ad on ad.Articulo=invd.Articulo                    
  WHERE ad.Almacen=@ALM and  @id=invd.id                  
    */     
              
 SELECT InvD.Renglon, InvD.Articulo, ad.disponible               
    INTO #TempIF              
   FROM INV                    
   join INVD  on INV.ID=INVD.ID                      
    left join artdisponible ad on ad.Articulo=invd.Articulo AND Inv.Empresa = ad.Empresa              
   WHERE ad.Almacen=@ALM               
   and  @id=invd.id                  
                                                                                                      
   IF @Mov ='Inventario Fisico'  AND @ESTATUS = 'SINAFECTAR'                                                                                                                       
      BEGIN                 
                   
                                                                                                           
     UPDATE INVD              
     SET CantidadIF = t.Disponible                                          
     FROM #TempIF t              
     WHERE @ID = INVD.ID                                                                                                        
       AND InvD.Renglon = t.Renglon              
    END                                                                            
   END        
        
    
        
--------------------------------------------------      VALIDACION NO CANCELAR O GENERAR MOVIMIENTOS MES-----------------------------              
        IF (@Modulo='INV')       
 BEGIN       
  SELECT @Mov=Mov, @OrigenTipo=OrigenTipo FROM Inv WHERE ID=@ID       
  SELECT @MovTipo=Clave FROM MovTipo WHERE Modulo=@Modulo AND Mov=@Mov       
      
  /***** validacion para evitar cancelar movs originados de mes, JRD 07-Nov-2018 *****/      
  IF (@Accion='CANCELAR' )      
  BEGIN       
   IF (@MovTipo IN ('INV.E','INV.S') AND @OrigenTipo='MES') AND @MOV IN ('Consumo Produccion','Entrada Produccion')      
   BEGIN      
    SELECT @Ok=20180, @OkRef='No Se Puede Cancelar. Movimiento Generado Desde MES'      
   END      
  END       
      
        
  IF (@Accion='AFECTAR' )      
  BEGIN       
    IF @Mov = 'Entrada Produccion'    
    BEGIN    
        SELECT  @Referencia = i.Referencia,    
                @INFORCostoIndirecto = INFORCostoIndirecto    
        FROM    Inv     i    
        JOIN    InvD    d   ON  i.ID = d.ID    
        WHERE   i.ID = @ID    
            
        IF EXISTS(SELECT    i.ID     
                    FROM    Inv    i    
                    JOIN    InvD   d   ON  i.ID = d.ID    
                    WHERE   i.ID = @ID     
                    AND     i.Mov = 'Consumo'     
                    AND     i.Estatus = 'BORRADOR'     
                    AND     d.INFORCostoIndirecto = @INFORCostoIndirecto)    
            SELECT @Ok=20180, @OkRef='No Es Posible Afectar la Entrada Produccion si el Consumo no está CONCLUIDO'      
    END    
   --IF (@MovTipo IN ('INV.S', 'INV.E') AND @SubClave IN ('INV.ENTPRO', 'INV.CONSPRO') AND @Accion='AFECTAR' )       
   IF (@MovTipo IN ('INV.S', 'INV.E') AND @OrigenTipo IS NULL) AND @MOV IN ('Consumo Produccion','Entrada Produccion')      
   BEGIN      
    SELECT @Ok=20180, @OkRef='No Es Posible Generar Movimientos No Generados Desde MES Directamente'      
   END      
  END    
    
--------------------------------------------------------------------------------------------    
    
  IF @Modulo = 'TMA' AND @Accion IN ('VERIFICAR', 'AFECTAR')        
  BEGIN        
    EXEC spMovInfo @ID, @Modulo, @MovTipo = @MovTipo OUTPUT, @Empresa = @Empresa OUTPUT        
        
    IF @MovTipo = 'TMA.PCKTARIMATRAN'         
    BEGIN        
      CREATE TABLE #PorSurtir(        
      Renglon         float,        
      Articulo        varchar(20),        
      Cantidad        float,        
      Tarima          varchar(20))        
        
      CREATE TABLE #OrdenSurtido(        
      Renglon         float,        
      Articulo        varchar(20),        
      Cantidad        float)        
        
      CREATE TABLE #Surtido(        
      Renglon         float,        
      Articulo        varchar(20),        
      Cantidad        float,        
      Tarima          varchar(20))        
        
      INSERT INTO #PorSurtir(Renglon, Articulo, Cantidad, Tarima)        
      SELECT Renglon, Articulo, CantidadPicking, Tarima        
        FROM TMAD        
       WHERE ID = @ID        
         AND ISNULL(CantidadPicking, 0) > 0        
        
      SELECT @Origen = Origen, @OrigenID = OrigenID        
        FROM TMA        
       WHERE ID = @ID        
        
      SELECT @IDAplica = ID        
        FROM TMA        
       WHERE Empresa = @Empresa        
         AND Mov = @Origen        
         AND MovID = @OrigenID        
         AND Estatus IN ('PENDIENTE', 'CONCLUIDO')        
        
--SELECT @IDAplica, @EMPRESA, @Origen, @OrigenID        
        
      INSERT INTO #OrdenSurtido(Renglon, Articulo, Cantidad)        
      SELECT d.Renglon, d.Articulo, d.CantidadPicking        
        FROM TMAD d        
       WHERE d.ID = @IDAplica        
        
      INSERT INTO #Surtido(Renglon, Articulo, Cantidad, Tarima)        
      SELECT dd.Renglon, dd.Articulo, dd.CantidadPicking, dd.Tarima        
     FROM TMAD d        
        JOIN MovFlujo f ON d.ID = f.OID AND f.OModulo = 'TMA' AND f.Cancelado = 0        
        JOIN TMA t ON f.DID = t.ID AND t.Estatus in ('CONCLUIDO', 'PENDIENTE')        
        JOIN TMAD dd ON f.DID = dd.ID AND d.Renglon = dd.Renglon  and d.Tarima = dd.Tarima      
       WHERE d.ID = @IDAplica        
     /*        
      SELECT * from #OrdenSurtido        
      select * from #PorSurtir        
      select * from #Surtido        
        
      SELECT os.Articulo, SUM(ISNULL(ps.Cantidad, 0)), SUM(ISNULL(s.Cantidad, 0)), ISNULL(os.Cantidad, 0), SUM(ISNULL(ps.Cantidad, 0)) + SUM(ISNULL(s.Cantidad, 0)) - ISNULL(os.Cantidad, 0)        
        FROM #OrdenSurtido os         
        JOIN #PorSurtir ps ON os.Renglon = ps.Renglon AND os.Articulo = ps.Articulo        
        JOIN #Surtido s ON os.Renglon = s.Renglon AND os.Articulo = s.Articulo        
       GROUP BY os.Renglon, os.Articulo, ISNULL(os.Cantidad, 0)        
--      HAVING ISNULL(os.Cantidad, 0) < SUM(ISNULL(ps.Cantidad, 0)) + SUM(ISNULL(s.Cantidad, 0))      
*/        
      SELECT @Articulo = os.Articulo, @CantidadExcede = SUM(ISNULL(ps.Cantidad, 0)) + SUM(ISNULL(s.Cantidad, 0)) - ISNULL(os.Cantidad, 0)        
        FROM #OrdenSurtido os     
        JOIN #PorSurtir ps ON os.Renglon = ps.Renglon AND os.Articulo = ps.Articulo        
        JOIN #Surtido s ON os.Renglon = s.Renglon AND os.Articulo = s.Articulo        
       GROUP BY os.Renglon, os.Articulo, ISNULL(os.Cantidad, 0)        
      HAVING ISNULL(os.Cantidad, 0) < SUM(ISNULL(ps.Cantidad, 0)) + SUM(ISNULL(s.Cantidad, 0))        
        
      IF @Articulo IS NOT NULL        
        SELECT @Ok = 10060, @OkRef = 'El Articulo ' + @Articulo + ' excede la cantidad surtida por '  + RTRIM(ISNULL(@CantidadExcede, 0))        
    END        
  END        
        
END    
    
  IF @Modulo = 'INV' AND @Accion = 'AFECTAR'    
  BEGIN    
    SELECT @Mov=Mov FROM Inv WHERE ID=@ID     
    IF @Mov ='Entrada Produccion'    
    BEGIN    
      EXEC xpInmersionCostoNVK @Modulo, @ID    
    END    
  END    
    
  RETURN    
END 
GO
/******************************************* xpDespuesAfectar  **********************************************/
IF EXISTS (SELECT 1 FROM Sys.procedures WHERE name = 'xpDespuesAfectar')
DROP PROCEDURE [dbo].[xpDespuesAfectar]
GO
CREATE PROCEDURE [dbo].[xpDespuesAfectar]      
@Modulo             char(5),                          
@ID                 int,                          
@Accion             char(20),                          
@Base               char(20),                          
@GenerarMov         char(20),                          
@Usuario            char(10),                          
@SincroFinal        bit,                          
@EnSilencio         bit,                          
@Ok                 int      OUTPUT,                          
@OkRef              varchar(255) OUTPUT,                          
@FechaRegistro      datetime                           
AS BEGIN                          
DECLARE     
@Empresa            varchar(5),                          
@IntelMESInterfase  bit ,                        
@MOV                VARCHAR(50),                        
@MOVID              VARCHAR(30),                        
@ESTATUS            VARCHAR(30),                  
@SubClave           VARCHAR(20),            
@Clave              varchar(10),          
@IDNC               INT,      
@Sucursal           int,
@AplicaMovNota      varchar(20),
@AplicaIDMovNota    varchar(20),
@ImporteO	        float,
@ImporteAct         float
                                        
           
IF @Modulo='VTAS'   
BEGIN
     SELECT @Mov=Mov , 
            @Estatus = Estatus,
            @Sucursal = Sucursal
       FROM Venta 
      WHERE ID=@ID
      
        IF @Accion='CANCELAR'                     
           BEGIN            
                 IF @MOV LIKE 'fACT%' AND @ESTATUS='CANCELADO'            
                 BEGIN            
                    EXEC MURSPFACTCANCELADANVK  @ID            
                 END            
            END
    /*JARC mandar llamar el sp que afecta el pedido*/
        IF @Accion='AFECTAR'              
        BEGIN

            IF @Mov = 'Cotizacion' AND @Estatus ='PENDIENTE'
            EXEC nvk_sp_GenerarPedido @Sucursal,@Modulo,@ID, @Usuario

        END

END

--IF @Accion='AFECTAR' AND @Modulo='PC'       
--BEGIN      
----SELECT DISTINCT MOV FROM PC      
--     SELECT @MOV=MOV , @ESTATUS = ESTATUS FROM PC WHERE ID=@ID            
--  IF @MOV='Precios' AND @ESTATUS IN ('CONCLUIDO','PENDIENTE','VIGENTE')      
--     BEGIN      
--  EXEC  MURSPENVIACORREOSPRECIOS @ID       
--  END       
--END      
--Integracion MES------------------------------------------------------------------------------------           
IF @Modulo='EMB' AND @Accion='AFECTAR'              
BEGIN              
EXEC MURSPGENERAGUIAEMBARQUEVTA  @ID               
END              

IF(@Modulo IN ('INV', 'COMS', 'VTAS', 'PROD') AND @Accion IN ('AFECTAR', 'CANCELAR'))                          
                  
BEGIN                           
                  
 IF (@Modulo ='INV')                          
    SELECT @Empresa=Empresa FROM Inv WHERE ID=@ID                          
             
 IF (@Modulo ='COMS')                          
                  
  SELECT @Empresa=Empresa FROM Compra WHERE ID=@ID                          
                  
 IF (@Modulo ='VTAS')                          
                  
  SELECT @Empresa=Empresa FROM Venta WHERE ID=@ID                          
                  
 IF (@Modulo ='PROD')                          
                  
  SELECT @Empresa=Empresa FROM Prod WHERE ID=@ID                          
                  
 SELECT @IntelMESInterfase=ISNULL(IntelMESInterfase, 0) FROM EmpresaCfg WHERE Empresa=@Empresa                           
                  
 --IF (@IntelMESInterfase=1)                          
                  
  EXEC xpMESDespuesAfectar @Modulo, @ID, @Accion, @Base, @GenerarMov, @Usuario, @SincroFinal, @EnSilencio,                          
                  
   @Ok OUTPUT, @OkRef OUTPUT, @FechaRegistro                          
                  
END                           
                  
  IF @Modulo = 'INV' AND @Accion IN ('GENERAR', 'AFECTAR')                        
                  
  BEGIN                        
                  
        SELECT @Mov = Mov FROM Inv WHERE ID = @ID                        
             
        IF (SELECT Clave FROM MovTipo WHERE Modulo = 'INV' AND Mov = @Mov) IN ('INV.SI', 'INV.TI', 'INV.EI')                        
                  
    BEGIN                        
                  
         UPDATE InvD SET FechaCaducidad = sl.FechaCaducidad FROM InvD i                         
                  
         JOIN SerieLoteMov sl ON i.ID = sl.ID AND i.Articulo = sl.Articulo AND ISNULL(i.Subcuenta,'') = ISNULL(sl.subcuenta,'')                   
                  
      WHERE i.ID = @ID  AND sl.FechaCaducidad IS NOT NULL                        
                  
    END                        
                  
   END                        
                  
IF @Accion IN ('AFECTAR')         
        
        
        
IF  @Modulo='COMS'          
  BEGIN           
          
          
  EXEC MURSPGENERAPLICACIONCXPNAVITEK @ID          
          
  END          
    
BEGIN                        
                  
  IF @Modulo ='VTAS'                              
                  
  BEGIN                        
                  
   --EXEC MURSPCOMPARAPRECIOSDETALLE @ID                
                  
   EXEC MURSPAVISAPARTIDASDESCUENTO @ID, @Ok OUTPUT, @OkRef OUTPUT                            
                  
  SELECT @MOV=Mov FROM  Venta WHERE ID=@ID                          
                  
  IF  @MOV LIKE 'FAC%'                          
                  
  BEGIN                          
                  
   EXEC MURSPGENERAPLICACIONCXCNAVITEK  @ID                          
                  
 END                          
    IF  @MOV = 'Refacturacion NVK'                          
                  
  BEGIN                          
                  
   EXEC MURSPACTUUIDREF  @ID                          
                  
   END                
    
  END                       
                  
 IF @MODULO='AF'                        
                  
  BEGIN                        
                  
        SELECT  @MOV=M.CLAVE,@MOVID=MOVID,@ESTATUS=ESTATUS                         
                  
        FROM ACTIVOFIJO A LEFT OUTER JOIN MOVTIPO M ON A.MOV=M.MOV AND M.MODULO='AF'                         
                  
        WHERE ID=@ID                        
                  
        --SELECT * FROM MOVTIPO WHERE MODULO='AF'                   
                  
        IF  @MOV='AF.MA'  AND @ESTATUS='PENDIENTE'                        
                  
       BEGIN                        
                  
          EXEC     MURSPGENERAREF  @ID                        
                  
      END                        
                  
 END                        
                  
END               
    
    
IF @Modulo = 'CXC' AND @Accion = 'AFECTAR'        
        
BEGIN        
        
  select @Mov=c.Mov, @ESTATUS=c.Estatus          
  from Cxc c              
  WHERE ID=@ID        
                       
IF @MOV IN ('reasignacion' ,'Reasignacion T' )AND @ESTATUS='concluido'        
BEGIN        
        
EXEC MURSPNAVREFERENCIA  @ID --,@OK OUTPUT    SELECT DISTINCT MOV FROM CXC    
        
END        
 
END      
    
                  
IF @Modulo = 'CXC' AND @Accion = 'CANCELAR'                           
BEGIN                  
                  
     SELECT @Mov = Mov, @MOVID = MovID FROM CXC WHERE ID = @ID                  
                  
     SELECT @SubClave = SubClave, @Clave = Clave FROM MovTipo WHERE Mov = @MOV and Modulo = @Modulo                  
                  
 -- SELECT @MOV, @SubClave                  
                  
         IF (@MOV = 'Aplicacion Cobro' OR @MOV = 'Cobro') AND @Modulo = 'CXC'--@SubClave = 'CXC.AANT'                      
                  
		BEGIN                  
                  
			SELECT @IDNC = ID  FROM CXC C JOIN Movtipo M ON M.Modulo = 'CXC' AND C.Mov = M.Mov AND M.Clave='CXC.NC'                  
            WHERE Origen = @MOV AND OrigenID = @MOVID                  
                  
			EXEC spAfectar @Modulo, @IDNC, 'CANCELAR',  @EnSilencio = 1, @Conexion = 1, @Usuario=@Usuario, @Ok = @Ok OUTPUT, @OkRef = @OkRef OUTPUT                      
                  
		END  
		
		IF TRIM(@MOV) = 'Nota Credito PP' AND @Accion = 'CANCELAR'
		BEGIN
			SELECT TOP(1) @AplicaMovNota = Aplica, @AplicaIDMovNota = AplicaID, @ImporteAct =  Importe FROM CxcD WHERE ID = @ID
			IF EXISTS(SELECT TOP(1) 0 FROM NaviExploraProntoPago WHERE Mov = @AplicaMovNota AND MovID = @AplicaIDMovNota AND ABS(ISNULL(@ImporteAct,0)-ISNULL(Total,0)) <= 1 AND ISNULL(Procesado,0) = 1 )
			BEGIN
				UPDATE NaviExploraProntoPago SET Procesado = 0 WHERE Mov = @AplicaMovNota AND MovID = @AplicaIDMovNota AND ABS(ISNULL(@ImporteAct,0)-ISNULL(Total,0)) <= 1 AND ISNULL(Procesado,0) = 1
			END
		END
                  
END                                 
--PROCESO DE FINALIZAR NOMINA SI CREO CXP ACTUALICE LA FECHA VENCIMIENTO A FECHA EMISION                     
                  
DECLARE                    
                  
  @Origen Varchar(20),                    
        
  @OrigenID  Varchar(20),                    
                  
  @FechaPago datetime,                    
  @CxpID int                    
                  
SELECT @Mov = Mov FROM Nomina WHERE ID =  @ID                    
                  
 --SELECT Clave,* FROM MovTipo WHERE Modulo = 'NOM' AND Mov = @Mov                    
                  
IF(@Modulo IN ('NOM') AND @Accion IN ('AFECTAR'))                      
                  
    IF (SELECT Clave FROM MovTipo WHERE Modulo = 'NOM' AND Mov = @Mov) IN ('NOM.N')                        
                  
    BEGIN                    
                  
      IF (SELECT Estatus FROM Nomina WHERE ID =  @ID) IN ('CONCLUIDO')                    
                  
     BEGIN                    
                  
     SELECT @Origen = Mov, @OrigenID = MovID, @FechaPago = FechaEmision FROM Nomina WHERE ID =  @ID                    
        
   DECLARE crCXP CURSOR                    
                  
         FOR SELECT ID FROM CXP WHERE MOV = 'Pago Nomina' AND ORIGEN = @Origen AND ORIGENID =@OrigenID AND ESTATUS <> 'CANCELADO'                    
                  
      OPEN crCXP                    
                  
      FETCH NEXT FROM crCXP INTO @CxpID                    
                  
      WHILE @@FETCH_STATUS <> -1 AND @Ok IS NULL                    
                  
      BEGIN                    
                  
        IF @@FETCH_STATUS <> -2 AND @Ok IS NULL                     
                  
        BEGIN                    
                  
            UPDATE CXP SET Vencimiento = @FechaPago WHERE ID = @CxpID                    
                  
        END                     
                  
        FETCH NEXT FROM crCXP INTO @CxpID         
                  
      END  -- While                    
                  
      CLOSE crCXP                    
                  
      DEALLOCATE crCXP                     
                  
  END                    
                  
  END                    
      
  EXEC spMovInfo @ID, @Modulo, @Estatus=@Estatus OUTPUT, @Sucursal=@Sucursal OUTPUT, @Empresa = @Empresa OUTPUT, @Mov=@Mov OUTPUT, @MovID = @MovID OUTPUT, @MovTipo = @Clave OUTPUT      
      
  IF @Accion = 'CANCELAR' AND @Modulo IN ('VTAS', 'COMS', 'INV')      
  BEGIN      
    --Este sp Regresa visibles los movimientos relacionados en la herramienta de Carta Porte Venta      
  EXEC spCancelaHerramientaCartaPorte @ID, @Modulo      
  END 
  
  IF @Modulo = 'COMS' AND @Accion = 'CANCELAR' AND ISNULL(@Base,'') IN ('','TODO','PENDIENTE') 
  AND (SELECT mt.SubClave FROM Compra c JOIN MovTipo mt ON c.Mov = mt.Mov AND mt.Modulo = @Modulo WHERE c.ID = @ID AND c.Estatus = 'CONCLUIDO') = 'COMS.IMPNA' 
  AND (SELECT mt.Clave FROM Compra c JOIN MovTipo mt ON c.Mov = mt.Mov AND mt.Modulo = @Modulo WHERE c.ID = @ID AND c.Estatus = 'CONCLUIDO') = 'COMS.OI'
  BEGIN

	IF EXISTS(
		SELECT TOP(1) 0 FROM MovFlujo WHERE OModulo = 'COMS' AND OID = @ID AND DModulo = 'CXP' AND DMov = 'Gasto Diverso'
		AND ISNULL(Cancelado,0) = 0
	)
	BEGIN -- Gastos Pendientes

		DROP TABLE IF EXISTS #GastosPendientesCancelarEntradaNal
		CREATE TABLE #GastosPendientesCancelarEntradaNal
		(
			ID int NOT NULL
		)

		DECLARE @IDGasto int

		INSERT INTO #GastosPendientesCancelarEntradaNal
		SELECT DISTINCT DID FROM MovFlujo WHERE OModulo = 'COMS' AND OID = @ID AND DModulo = 'CXP' AND DMov = 'Gasto Diverso'
		AND ISNULL(Cancelado,0) = 0

		DECLARE crCancelarGastosPEntradaNal CURSOR FAST_FORWARD FOR
		SELECT
			ID
		FROM #GastosPendientesCancelarEntradaNal
		ORDER BY ID DESC
		
		OPEN crCancelarGastosPEntradaNal
		FETCH NEXT FROM crCancelarGastosPEntradaNal INTO @IDGasto

		WHILE @@FETCH_STATUS = 0
		BEGIN
			
			BEGIN TRANSACTION CancelarGastoTodo
				EXEC spAfectar 'CXP',@IDGasto,'CANCELAR','TODO',@Usuario = @Usuario,@EnSilencio = 1, @Conexion = 1
			COMMIT TRANSACTION CancelarGastoTodo

			FETCH NEXT FROM crCancelarGastosPEntradaNal INTO @IDGasto
		END

		CLOSE crCancelarGastosPEntradaNal
		DEALLOCATE crCancelarGastosPEntradaNal

		--SELECT Estatus,* FROM Cxp where id IN (SELECT ID FROM #GastosPendientesCancelarEntradaNal)

		IF NOT EXISTS(SELECT TOP(1) 0 FROM Cxp WHERE Estatus != 'CANCELADO' AND ID IN (SELECT ID FROM #GastosPendientesCancelarEntradaNal))
		BEGIN -- Se cancelaron correctamente todos los gastos pendientes

			IF EXISTS(SELECT TOP(1) 0 FROM CompraD WHERE ID = @ID AND ISNULL(CantidadCancelada,0) != 0 AND ISNULL(CantidadPendiente,0) = 0)
			BEGIN -- Se actualiza el detalle

				UPDATE CompraD SET CantidadPendiente = CantidadCancelada WHERE ID = @ID AND ISNULL(CantidadCancelada,0) != 0
				UPDATE CompraD SET CantidadCancelada = NULL WHERE ID = @ID

				--SELECT Estatus,* FROM Compra WHERE ID = @ID
				--SELECT Cantidad,CantidadA, CantidadCancelada,CantidadPendiente,* FROM CompraD where id = @ID

				-- Se manda a cancelar la Entrada Nal
				EXEC spAfectar 'COMS',@ID,'CANCELAR','TODO',@Usuario = @Usuario, @EnSilencio = 1

				IF EXISTS(SELECT TOP(1) 0 FROM Compra WHERE ID = @ID AND Estatus = 'PENDIENTE')
					EXEC spAfectar 'COMS',@ID,'CANCELAR','TODO',@Usuario = @Usuario, @EnSilencio = 1
			END

		END

	END -- Gastos Pendientes
  END
     
RETURN                          
END
GO
/******************************************** nvk_sp_GenerarPedido ***************************************************/
IF EXISTS (SELECT 1 FROM Sys.procedures WHERE name = 'nvk_sp_GenerarPedido')
DROP PROCEDURE dbo.nvk_sp_GenerarPedido
GO
CREATE PROCEDURE dbo.nvk_sp_GenerarPedido 
@Sucursal		    int,
@Modulo		        char(5),
@Id				    INT,
@Usuario            char(10)
AS
BEGIN
DECLARE
@RenglonID		    int,
@EnSilencio			bit,
@FechaRegistro      datetime = GETDATE(),
@IdGenerado         int

DECLARE @PedidoPendiente TABLE (Ok INT NULL, 
OkDesc varchar(255) NULL, 
OkTipo varchar(50) NULL, 
OkRef varchar(255) NULL, 
IDGenerar int NULL)

SELECT @RenglonID = COUNT(vd.RenglonID)
  FROM VentaD vd
 WHERE vd.Id = @Id
   AND vd.DescripcionExtra LIKE '%Por Debajo del Precio Permitido%'
 GROUP BY vd.RenglonID


 IF @RenglonID > 0
 RETURN
	ELSE
        INSERT INTO @PedidoPendiente
        EXEC spAfectar @Modulo, @Id, 'GENERAR', 'Pendiente', 'PEG', @Usuario, @FechaRegistro=@FechaRegistro

        SELECT @IdGenerado = IDGenerar FROM @PedidoPendiente

            EXEC spAfectar @Modulo, @IdGenerado, 'AFECTAR', 'Todo', NULL, @Usuario
RETURN
END