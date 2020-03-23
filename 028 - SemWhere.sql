CREATE DATABASE UpdateSemWhere;

USE UpdateSemWhere;

CREATE TABLE Produtos(
IdProdutos INT PRIMARY KEY IDENTITY,
NomeP VARCHAR(50) NOT NULL,
TipoP CHAR(1) NOT NULL,
Preco INT NOT NULL
);

INSERT INTO Produtos VALUES ('Monitor','B',0);
INSERT INTO Produtos VALUES ('HeadSet','A',0);
INSERT INTO Produtos VALUES ('PC Case','A',0);
INSERT INTO Produtos VALUES ('Computer Desk','C', 0);
INSERT INTO Produtos VALUES ('Gaming Chair', 'C', 0);
INSERT INTO Produtos VALUES ('Mouse','A',0);

SELECT * FROM Produtos;

SELECT NomeP, TipoP+20 FROM Produtos
WHERE TipoP = 'A';