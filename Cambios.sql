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

