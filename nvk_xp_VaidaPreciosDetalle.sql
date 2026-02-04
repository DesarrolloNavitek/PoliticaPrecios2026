IF EXISTS (SELECT 1 FROM Sys.procedures WHERE name = 'nvk_xp_ValidaPreciosDetalle')
DROP PROCEDURE nvk_xp_ValidaPreciosDetalle
GO
CREATE PROC nvk_xp_ValidaPreciosDetalle  
    @Id                 int,
    @OK                 int output,
    @OkRef              varchar(255) output
AS
BEGIN
DECLARE
    @Articulo  varchar(20)

;WITH VentaBase AS (
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
        LEFT JOIN VentaD vd ON vd.ID = vb.id AND vd.Articulo = vb.Articulo
        --JOIN Art a ON a.Articulo = vb.Articulo
    )

    --SELECT * FROM Diferencia where PrecioVenta < PrecioMinimo

    SELECT TOP 1 @Articulo = vd.Articulo
      FROM VentaD vd
      LEFT JOIN Diferencia d ON vd.ID = d.ID
     WHERE vd.Renglon=d.Renglon
       AND vd.RenglonID = d.RenglonID
       AND PrecioVenta < PrecioMinimo


       IF @Articulo IS NOT NULL
       BEGIN
       SELECT @OK = 20305,@OkRef = 'El artículo '+TRIM(@Articulo)+' no cubre el precio minimo'
       END



RETURN

END
GO


