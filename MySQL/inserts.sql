USE Urban_Nest;

INSERT INTO Categoria_MSA (Nombre, Descripcion) VALUES ('Playera', 'Playeras con diseños unicos y personalizados');
INSERT INTO Categoria_MSA (Nombre, Descripcion) VALUES ('Gorra', 'Gorras de distintos estilos, colores y diseños');
INSERT INTO Categoria_MSA (Nombre, Descripcion) VALUES ('Edicion Especial', 'Productos de colección y limitados');
INSERT INTO Categoria_MSA (Nombre, Descripcion) VALUES ('Promocion', 'Artículos con descuento especial');
INSERT INTO Categoria_MSA (Nombre, Descripcion) VALUES ('Personalizado', 'Productos con diseño solicitado por el cliente');

INSERT INTO Producto_MSA (Nombre, Descripcion, Precio, Stock, Talla, Color, Id_Categoria) VALUES ('Playera Street Art', 'Playera oversize con diseño urbano', 120.00, 30, 'M', 'Negro', 1);
INSERT INTO Producto_MSA (Nombre, Descripcion, Precio, Stock, Talla, Color, Id_Categoria) values ('Playera Urban Flame', 'Playera con estampado llamativo', 115.00, 25, 'L', 'Blanco', 1);
INSERT INTO Producto_MSA (Nombre, Descripcion, Precio, Stock, Talla, Color, Id_Categoria) VALUES ('Gorra Classic Snap', 'Gorra snapback ajustable', 90.00, 40, 7, 'Rojo', 2);
INSERT INTO Producto_MSA (Nombre, Descripcion, Precio, Stock, Talla, Color, Id_Categoria) VALUES ('Gorra Urban Cap', 'Gorra moderna para uso diario', 95.00-(95.00*0.15), 35, 6, 'Azul', 4);
INSERT INTO Producto_MSA (Nombre, Descripcion, Precio, Stock, Talla, Color, Id_Categoria) VALUES ('Playera Black Edition', 'Edición especial con diseño exclusivo', 150.00, 15, 'XL', 'Negro', 3);

INSERT INTO Cliente_MSA (Nombre, Apellido, Correo, Telefono) VALUES ('Juan', 'Pérez', 'juanperez@gmail.com', '5581-1641');
INSERT INTO Cliente_MSA (Nombre, Apellido, Correo, Telefono) VALUES ('María', 'López', 'marialopez@gmail.com', '5542-2297');
INSERT INTO Cliente_MSA (Nombre, Apellido, Correo, Telefono) VALUES ('Carlos', 'Leiva', 'carlosleiva@gmail.com', '5153-3923');
INSERT INTO Cliente_MSA (Nombre, Apellido, Correo, Telefono) VALUES ('Ana', 'Hernández', 'anahernandez@gmail.com', '5158-4344');
INSERT INTO Cliente_MSA (Nombre, Apellido, Correo, Telefono) VALUES ('Luis', 'Martínez', 'luismarti@gmail.com', '5679-5597');

INSERT INTO Pedido_MSA (Fecha_Pedido, Estado, Total, Id_Cliente) VALUES ('2026-05-01', 'Pendiente', 210.00, 1);
INSERT INTO Pedido_MSA (Fecha_Pedido, Estado, Total, Id_Cliente) VALUES ('2026-05-02', 'Pagado', 120.00, 2);
INSERT INTO Pedido_MSA (Fecha_Pedido, Estado, Total, Id_Cliente) VALUES ('2026-05-03', 'Enviado', 185.00, 3);
INSERT INTO Pedido_MSA (Fecha_Pedido, Estado, Total, Id_Cliente) VALUES ('2026-05-04', 'Entregado', 95.00, 4);
INSERT INTO Pedido_MSA (Fecha_Pedido, Estado, Total, Id_Cliente) VALUES ('2026-05-05', 'Cancelado', 150.00, 5);

INSERT INTO Detalle_Pedido_MSA (Id_Pedido, Id_Producto, Cantidad, Precio_Unitario, Subtotal) VALUES (1, 1, 1, 120.00, 120.00);
INSERT INTO Detalle_Pedido_MSA (Id_Pedido, Id_Producto, Cantidad, Precio_Unitario, Subtotal) VALUES (2, 2, 5, 115.00, 5750.00);
INSERT INTO Detalle_Pedido_MSA (Id_Pedido, Id_Producto, Cantidad, Precio_Unitario, Subtotal) VALUES (3, 3, 3, 90.00, 270.00);
INSERT INTO Detalle_Pedido_MSA (Id_Pedido, Id_Producto, Cantidad, Precio_Unitario, Subtotal) VALUES (4, 4, 7, 80.75, 565.25);
INSERT INTO Detalle_Pedido_MSA (Id_Pedido, Id_Producto, Cantidad, Precio_Unitario, Subtotal) VALUES (5, 5, 6, 150.00, 900.00);