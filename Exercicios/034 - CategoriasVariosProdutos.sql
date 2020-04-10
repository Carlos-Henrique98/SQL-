CREATE DATABASE CategoriaVariosProdutos;

USE CategoriaVariosProdutos;

CREATE TABLE Categorias(
IdCategorias INT PRIMARY KEY IDENTITY,
NomeC VARCHAR(255) NOT NULL
);

CREATE TABLE Produtos(
IdProdutos INT PRIMARY KEY IDENTITY,
NomeP VARCHAR(255) NOT NULL,
Quantidade INT NOT NULL,
Preco DECIMAL(4,2) NOT NULL,
IdCategoria INT FOREIGN KEY REFERENCES Categorias (IdCategorias)
);

INSERT INTO Produtos VALUES ('Blue Chair', 30,300.00,9);
INSERT INTO Produtos VALUES ('Red Chair', 200,2150.00,2);
INSERT INTO Produtos VALUES ('Diney Wardrobe', 400, 829.50, 2);
INSERT INTO Produtos VALUES ('Blue Toaster', 20, 9.90, 3);
INSERT INTO Produtos VALUES ('Solar Panel', 30,3000.25,4);

INSERT INTO Categorias VALUES ('Superior');
INSERT INTO Categorias VALUES ('Super Luxury');
INSERT INTO Categorias VALUES ('Modern');
INSERT INTO Categorias VALUES ('Nerd');
INSERT INTO Categorias VALUES ('Infatile');
INSERT INTO Categorias VALUES ('Robust');
INSERT INTO Categorias VALUES ('Wood');

SELECT * FROM Categorias;
SELECT * FROM Produtos;
