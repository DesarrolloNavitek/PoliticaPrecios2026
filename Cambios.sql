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




--sustituir CREATE PROC MURSPPRECIODETALLENAVI  en VentaD tabla campo instrucción
--[VentaD.tbl/Instruccion]
--Nombre=Lista
--ValorPorOmision=Venta:Venta.ListaPreciosEsp
--TamanoValidacion=15
--AyudaEnCaptura=Expresion
--AlCambiar=Asigna(Precio, sql(<T>MURSPPRECIODETALLENAVI :TART,:TLISTA<T>,ARTICULO,Instruccion))Asigna(DescuentoLinea,  Si(DescuentoImporte >0,  100-( (DescuentoImporte*100)/Precio)),66)
--Formula=SQLENLISTA(<T>MURspLISTAPRECIOS :NID<T>,vENTA:vENTA.iD)

--SELECT dbo.nvk_fn_PrecioDetalleVta('(Precio 3)','81704805000')


IF EXISTS (SELECT 1 FROM sysobjects WHERE name = 'nvk_fn_PrecioDetalleVta')
DROP FUNCTION dbo.nvk_fn_PrecioDetalleVta
GO
CREATE FUNCTION dbo.nvk_fn_PrecioDetalleVta (@ListaP VARCHAR(20),@Articulo VARCHAR(20))
RETURNS money
AS
BEGIN
DECLARE @Precio money
--sustituir CREATE PROC MURSPPRECIODETALLENAVI  en VentaD tabla campo instrucción

SELECT @Precio = CASE WHEN @ListaP = '(Precio Lista)' THEN PrecioLista 
		 	WHEN @ListaP = '(Precio 1)' THEN PrecioLista
		 	WHEN @ListaP = '(Precio 2)' THEN Precio2
		 	WHEN @ListaP = '(Precio 3)' THEN Precio3
		 	WHEN @ListaP = '(Precio 4)' THEN Precio4
		 	WHEN @ListaP = '(Precio 5)' THEN Precio5
		 	WHEN @ListaP = '(Precio 6)' THEN Precio6
		 	WHEN @ListaP = '(Precio 7)' THEN Precio7
		 	WHEN @ListaP = '(Precio 8)' THEN Precio8
		 	ELSE '' END
FROM Art
WHERE Articulo  = @Articulo

RETURN @Precio

END
GO

--Sustituir Formula=SQLENLISTA(<T>MURspLISTAPRECIOS :NID<T>,vENTA:vENTA.iD)

--SELECT ListaPrecios FROM dbo.nvk_vw_CteListasPrecios WHERE Cliente = '11658'

IF EXISTS (SELECT 1 FROM sysobjects WHERE name = 'nvk_vw_CteListasPrecios' AND TYPE = 'V')
DROP VIEW dbo.nvk_vw_CteListasPrecios
GO
CREATE VIEW dbo.nvk_vw_CteListasPrecios 
AS
--Sustituir Formula=SQLENLISTA(<T>MURspLISTAPRECIOS :NID<T>,vENTA:vENTA.iD) en VentaD tabla campo instrucción
SELECT Cliente,
		ListaPreciosEsp AS ListaPrecios 
FROM Cte
WHERE ListaPreciosEsp IS NOT NULL  

UNION ALL
SELECT Cliente,
		Descripcion12 
FROM Cte 
WHERE Descripcion12 IS NOT NULL
AND ListaPreciosEsp <> Descripcion12

UNION ALL
SELECT Cliente, 
		Descripcion14 
FROM Cte 
WHERE Descripcion14 IS NOT NULL
AND ListaPreciosEsp <> Descripcion14

UNION ALL
SELECT Cliente,
		Descripcion16 
FROM Cte
WHERE Descripcion16 IS NOT NULL    
AND ListaPreciosEsp <> Descripcion16


--select dbo.nvk_fn_DescuentoCliente (126036)
-- Agregar en VentaD Tabla valor por omision
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
