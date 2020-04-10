CREATE DATABASE ProdutosCategoria;

USE ProdutosCategoria;

CREATE TABLE Categorias(
IdCategoria INT PRIMARY KEY IDENTITY,
NomeC VARCHAR(250) NOT NULL
);

CREATE TABLE Produtos(
IdProduto INT PRIMARY KEY IDENTITY,
NomeP VARCHAR(200) NOT NULL,
Quantidade INT NOT NULL,
Preco INT NOT NULL,
IdCategoria INT FOREIGN KEY REFERENCES Categorias (IdCategoria)
);

INSERT INTO Categorias VALUES ('Wood')
INSERT INTO Categorias VALUES ('Luxury');
INSERT INTO Categorias VALUES ('Vintage');
INSERT INTO Categorias VALUES ('Modern');
INSERT INTO Categorias VALUES ('Super Luxury');

INSERT INTO Produtos VALUES ('Two-doors wardrobe', 100, 800,1);
INSERT INTO Produtos VALUES ('Dining table', 1000, 560,3);
INSERT INTO Produtos VALUES ('Towel holder', 10000, 25.50,4);
INSERT INTO Produtos VALUES ('Computer desk', 350, 320.50,2);
INSERT INTO Produtos VALUES ('Chair', 3000, 210.64,4);
INSERT INTO Produtos VALUES ('Single bed', 750, 460,1);

SELECT * FROM Produtos;
SELECT * FROM Categorias;

SELECT NomeC AS Nome, SUM(Quantidade) AS Soma FROM Categorias C
INNER JOIN Produtos P ON C.IdCategoria = P.IdCategoria
GROUP BY C.NomeC