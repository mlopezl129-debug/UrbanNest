Use Urban_Nest;

SELECT Id_Categoria, Min(precio) FROM producto_MSA GROUP BY Id_Categoria;

SELECT Fecha_Pedido, MAX(total) from pedido_MSA group by Fecha_Pedido;

SELECT Id, COUNT(*) AS Total_de_Clientes_MSA FROM cliente_MSA group by id;

SELECT id, SUM(Subtotal) AS Total_Vendido_MSA FROM detalle_pedido_MSA group by id;

SELECT id, AVG(total) AS Promedio_Total_MSA FROM pedido_MSA group by Id;