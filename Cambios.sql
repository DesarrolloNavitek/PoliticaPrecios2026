IF NOT EXISTS (SELECT 1 FROM SYS.TABLES WHERE NAME = 'nvk_CuotasClientesAnual')
CREATE TABLE dbo.nvk_CuotasClientesAnual
(
Cliente			varchar(10)	not null,
Ejercicio		int not null,
Descuento		float,
CuoataAnual		float,
CuotaMensual	float
)