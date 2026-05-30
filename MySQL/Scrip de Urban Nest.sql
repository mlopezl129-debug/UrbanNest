CREATE DATABASE Urban_Nest;
USE Urban_Nest;

CREATE TABLE Categoria_MSA (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Descripcion VARCHAR(200) NOT NULL
);

CREATE TABLE Cliente_MSA (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    Correo VARCHAR(100) NOT NULL,
    Telefono VARCHAR(50) NOT NULL
);

CREATE TABLE Producto_MSA (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Descripcion VARCHAR(200) NOT NULL,
    Precio float NOT NULL,
    Stock INT NOT NULL,
    Talla VARCHAR(10) NOT NULL,
    Color VARCHAR(30) NOT NULL,
    Id_Categoria INT NOT NULL
);

CREATE TABLE Pedido_MSA (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Fecha_Pedido DATE NOT NULL,
    Estado VARCHAR(50) NOT NULL,
    Total float NOT NULL,
    Id_Cliente INT NOT NULL
);

CREATE TABLE Detalle_Pedido_MSA (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Id_Pedido INT NOT NULL,
    Id_Producto INT NOT NULL,
    Cantidad INT NOT NULL,
    Precio_Unitario float NOT NULL,
    Subtotal float NOT NULL
);

ALTER TABLE Producto_MSA ADD CONSTRAINT FK_Producto_Categoria
FOREIGN KEY (Id_Categoria) REFERENCES Categoria_MSA(Id);

ALTER TABLE Pedido_MSA ADD CONSTRAINT FK_Pedido_Cliente
FOREIGN KEY (Id_Cliente) REFERENCES Cliente_MSA(Id);

ALTER TABLE Detalle_Pedido_MSA ADD CONSTRAINT FK_Detalle_Pedido_Pedido
FOREIGN KEY (Id_Pedido) REFERENCES Pedido_MSA(Id);

ALTER TABLE Detalle_Pedido_MSA ADD CONSTRAINT FK_Detalle_Pedido_Producto
FOREIGN KEY (Id_Producto) REFERENCES Producto_MSA(Id);