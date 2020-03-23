CREATE DATABASE Quantidade10E20;

USE Quantidade10E20;

CREATE TABLE Fornecedores(
IdFornecedores INT PRIMARY KEY IDENTITY,
NomeF VARCHAR(255) NOT NULL,
Rua VARCHAR(255) NOT NULL,
Cidade VARCHAR(255) NOT NULL,
Estado CHAR(2) NOT NULL
);

CREATE TABLE Produtos (
IdProdutos INT PRIMARY KEY IDENTITY,
NomeP VARCHAR(255) NOT NULL,
Quantidade VARCHAR(255) NOT NULL,
Preco VARCHAR(255) NOT NULL,
IdFornecedores INT FOREIGN KEY REFERENCES Fornecedores (IdFornecedores)
);

INSERT INTO Fornecedores VALUES ('Ajax SA', 'Rua Presidente Castelo Branco','Porto Alegre' , 'RS');
INSERT INTO Fornecedores VALUES ('Sansul SA', 'AV Brasil', 'Rio de Janeiro', 'RJ');
INSERT INTO Fornecedores VALUES ('Pr Sheppard Chairs', 'Rua do Moinho', 'Santa Maria', 'RS');
INSERT INTO Fornecedores VALUES ('Elon Electro', 'Rua Apolo', 'São Paulo', 'SP');
INSERT INTO Fornecedores VALUES ('Mike ELectro', 'Rua Pedro da Cunha', 'Curitiba' , 'PR');

INSERT INTO Produtos VALUES('Blue Chair', 30, 300.00, 5);
INSERT INTO Produtos VALUES('Red Chair', 50, 2150.00, 5);
INSERT INTO Produtos VALUES('Disney Wardrobe', 400, 829.50,4);
INSERT INTO Produtos VALUES('Executive Chair', 17, 9.90, 3);
INSERT INTO Produtos VALUES('Solar Panel', 30, 300.25, 4);

SELECT * FROM Fornecedores;
SELECT * FROM Produtos;

SELECT NomeP FROM Produtos
WHERE Quantidade  = 17