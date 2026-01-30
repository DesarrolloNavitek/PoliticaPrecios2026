IF EXISTS (SELECT 1 FROM Sys.procedures WHERE name = 'MURSPVALIDAPRECIOSDETALLEDIR')
DROP PROCEDURE dbo.MURSPVALIDAPRECIOSDETALLEDIR
GO
CREATE PROC MURSPVALIDAPRECIOSDETALLEDIR                    
                    
@ID                         Int,              
@GrupoTrabajo               varchar(50),
@Mov                        varchar(50),
@SubClave	                varchar(20),
@OK                         Int OUTPUT,
@OKREF                      varchar(255) OUTPUT
AS BEGIN                    
--   DECLARE @OK  INT ,              
--@OKREF  VARCHAR(255)         
      
  --      SELECT * FROM ART WHERE ARTICULO='82404815005'      
  --SELECT * FROM USUARIO WHERE USUARIO='SPEREZ'      
              
    IF EXISTS( SELECT * FROM VENTAD d left  outer join art a on d.Articulo=a.Articulo  WHERE isnull(PRECIO,0)=0 or isnull(Precio3,0)=0  or isnull(Precio4,0)=0              
    AND ID=@ID)              
    BEGIN              
            
            
    SELECT V.ID, V.Cliente,C.ListaPreciosEsp,V.Articulo,V.Cantidad,IMPORTE=ROUND(V.SubTotal/V.Cantidad,4),D.Instruccion,                    
      PrecioTotal=CASE WHEN D.Instruccion='(Precio Lista)' THEN T.PrecioLista ELSE CASE WHEN D.Instruccion='(Precio 3)' THEN T.Precio3 ELSE                    
      CASE WHEN D.Instruccion='(Precio 4)' THEN T.Precio4 ELSE  CASE WHEN D.Instruccion='(Precio 8)' THEN T.Precio8 ELSE 0     END END END END,                    
      D.DescuentoLinea,V.Renglon,V.RenglonID,T.PrecioLista,T.Precio4,T.Precio3                    
                    
      INTO #PRECIOCERO                    
   FROM VentaTCalc  V LEFT OUTER JOIN VentaD D ON V.ID=D.ID AND V.Articulo=D.Articulo AND V.Renglon=D.Renglon                    
       LEFT OUTER JOIN Cte C ON  V.Cliente=C.Cliente                    
       LEFT OUTER JOIN Art T ON V.Articulo=T.Articulo                    
   WHERE V.ID=@ID --1757               
     AND  substring( T.ARTICULO,1,2)  NOT in ('CL','PL')
           
         IF EXISTS(SELECT * FROM #PRECIOCERO WHERE PRECIOTOTAL=0 )            
         BEGIN            
            
         SELECT @OK=20305,@OKREF='HAY ARTICULOS CON PRECIO 0, POR FAVOR VERIFICALO'              
             
             
           RETURN              
         END            
    END              
--SE CAMBIAN COMO VARIABLES DE ENTRADA              
  --SELECT @mov=MOV FROM VENTA  WHERE ID=@ID              
              
  --SELECT @GRUPOTRABAJO=GrupoTrabajo FROM Usuario WHERE Usuario=@USUARIO              

  --IF @mov IN (              
  --select mov from movtipo where modulo='vtas' and  SubClave='VTAS.PNVK' and mov <>'cotizacion')
  IF @SubClave = 'VTAS.PNVK' AND @Mov <> 'Cotizacion'
  BEGIN
   -- SELECT 'AQUI ES'          
              
SELECT V.ID, V.Cliente,C.ListaPreciosEsp,V.Articulo,V.Cantidad,IMPORTE=ROUND(V.SubTotal/V.Cantidad,4),D.Instruccion,                    
   PrecioTotal=CASE WHEN D.Instruccion='(Precio Lista)' THEN T.PrecioLista ELSE CASE WHEN D.Instruccion='(Precio 3)' THEN T.Precio3 ELSE                    
   CASE WHEN D.Instruccion='(Precio 4)' THEN T.Precio4 ELSE CASE WHEN D.Instruccion='(Precio 8)' THEN T.Precio8 ELSE 0     
   END END END END,                    
   D.DescuentoLinea,V.Renglon,V.RenglonID,T.PrecioLista,T.Precio4,T.Precio3 ,T.Precio8 ,V.MONEDA                  
                    
   INTO #PARCIALCALDdos                    
FROM VentaTCalc  V LEFT OUTER JOIN VentaD D ON V.ID=D.ID AND V.Articulo=D.Articulo AND V.Renglon=D.Renglon                    
       LEFT OUTER JOIN Cte C ON  V.Cliente=C.Cliente                    
       LEFT OUTER JOIN Art T ON V.Articulo=T.Articulo                    
WHERE V.ID=@ID --1757                    
                    
      
   --  SELECT * FROM #PARCIALCALD      
                    
SELECT  ID, ListaPreciosEsp, Preciocte=case when ListaPreciosEsp='(Precio Lista)' then PrecioLista else                     
     case when ListaPreciosEsp='(Precio 3)' then Precio3 else                     
     case when ListaPreciosEsp='(Precio 4)' then Precio4 else 0 end end end,Renglon,RenglonID,                    
                    
PrecioTotal,                     
PTLOSTA= CONVERT(DECIMAL(10,4),PrecioLista-  ((PrecioLista * 40)/100)),                    
PT3=  CONVERT(DECIMAL(10,4),PRECIO3-  ((PRECIO3 * 40)/100)),                    
--PT4=  CONVERT(DECIMAL(10,2),PRECIO4-  ((Precio4 * 40)/100)),                    
PT4=  CONVERT(DECIMAL(10,4),PRECIO4),        
PT8=  CONVERT(DECIMAL(10,4),Precio8),       
IMPORTE          ,moneda       
                    
INTO #PARCIALCALtres                    
FROM #PARCIALCALDdos                    
                    
      
      
  --   SELECT * FROM #PARCIALCALDOS      
      
      
SELECT *,                    
Cambio=IMPORTE - PT4      
      
      
--CASE WHEN ListaPreciosEsp ='(Precio 3)' THEN  PT3 -IMPORTE ELSE                   
--     CASE WHEN ListaPreciosEsp ='(Precio 4)' THEN  PT4- IMPORTE ELSE                
--  CASE WHEN ListaPreciosEsp ='(Precio Lista)' THEN PTLOSTA -IMPORTE ELSE 0 END END              
--  END                  
                  
                   
INTO                    
                    
#UPDATENAVdos                    
FROM #PARCIALCALtres                    
       -- SELECT * FROM #UPDATENAV      
              
IF EXISTS(SELECT * FROM #UPDATENAVdos where cambio < 0  AND MONEDA='PESOS') AND @GRUPOTRABAJO <>'DIRECCION COMERCIAL'              
BEGIN              
       -- SELECT 'AQUI ES AHORA'      
SELECT @OK=333,@OKREF='NO PUEDES AFECTAR ESTE PEDIDO, HAY PRECIOS POR DEBAJO DE LA LISTA 4'              
              
END              
                  
    END              
                  
-- SELECT * FROM #UPDATENAV                  
 -- SELECT * FROM VentaD  WHERE ID=1760                  
--UPDATE  VentaD                    
--SET DescripcionExtra= ' POR DEBAJO DEL PRECIO PERMITIDO '+ CONVERT(VARCHAR(10),CAMBIO)                    
                    
--FROM VentaD D , #UPDATENAV U                     
--WHERE D.ID=U.ID AND D.Renglon=U.Renglon                    
--AND Cambio > 0                    
                    
END   