use Urban_Nest;

UPDATE Producto_MSA SET Precio = 130.00 WHERE Id = 1;

UPDATE Pedido_MSA SET Estado = 'Enviado' WHERE Id = 1;

UPDATE Cliente_MSA SET Telefono = '5139-9987' WHERE Id = 3;

DELETE FROM Detalle_Pedido_MSA WHERE Id = 5;

DELETE FROM Pedido_MSA WHERE Id < 4;

DELETE FROM Cliente_MSA WHERE Id > 2;