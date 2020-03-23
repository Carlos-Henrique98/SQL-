CREATE DATABASE SuperLuxo;

USE SuperLuxo;

CREATE TABLE Categorias(
IdCategorias INT PRIMARY KEY IDENTITY,
NomeC VARCHAR(255) NOT NULL
);

CREATE TABLE Fornecedores(
IdFornecedores INT PRIMARY KEY IDENTITY,
NomeF VARCHAR(255) NOT NULL,
Rua VARCHAR(255) NOT NULL,
Cidade VARCHAR(255) NOT NULL,
Estado CHAR(2) NOT NULL
);

CREATE TABLE Produtos(
IdProdutos INT PRIMARY KEY IDENTITY,
NomeP VARCHAR(255) NOT NULL,
Quantidade INT NOT NULL,
Preco DECIMAL(10,2) NOT NULL,
IdFornecedores INT FOREIGN KEY REFERENCES Fornecedores (IdFornecedores),
IdCategorias INT FOREIGN KEY REFERENCES Categorias (IdCategorias)
);

INSERT INTO Produtos VALUES ('Blue Chair', 30, 300.00, 5 ,5);
INSERT INTO Produtos VALUES ('Red Chair', 50, 2150.00, 2, 1);
INSERT INTO Produtos VALUES ('Disney Wardrobe', 400, 829.50, 4, 1);
INSERT INTO Produtos VALUES ('Blue Toaster', 20, 9.90, 3, 1);
INSERT INTO Produtos VALUES ('TV', 30, 3000.25, 2, 2);

INSERT INTO Fornecedores VALUES ('Ajax SA', 'Rua Presidente Castelo Branco', 'Porto Alegre', 'RS');
INSERT INTO Fornecedores VALUES ('Sansual SA', 'AV Brasil', 'Rio de Janeiro', 'RJ');
INSERT INTO Fornecedores VALUES ('South Clairs', 'Rua do Moinho', 'Santa Maria', 'RS');
INSERT INTO Fornecedores VALUES ('Elon Electro', 'Rua Apolo', 'Sao Paulo','SP');
INSERT INTO Fornecedores VALUES('Mike Electro', 'Rua Pedro da Cunha', 'Curitiba', 'PR');

INSERT INTO Categorias VALUES ('Super Luxury');
INSERT INTO Categorias VALUES ('Imported');
INSERT INTO Categorias VALUES ('Tech');
INSERT INTO Categorias VALUES ('Vintage');
INSERT INTO Categorias VALUES ('Supreme');

SELECT * FROM Categorias;
SELECT * FROM Fornecedores;
SELECT * FROM Produtos;

SELECT NomeC AS Nome, NomeP AS Nome, Preco
FROM Produtos P INNER JOIN Categorias C ON P.IdCategorias = C.IdCategorias
WHERE IdProdutos = 2;

DROP TABLE Categorias;
DROP TABLE Fornecedores;
DROP TABLE Produtos;