CREATE DATABASE CidadesOrdemA;

USE CidadesOrdemA;

CREATE TABLE Fornecedores(
IdFornecedores INT PRIMARY KEY IDENTITY,
NomeF VARCHAR(255) NOT NULL,
Rua VARCHAR(200) NOT NULL,
Cidade VARCHAR(255) NOT NULL,
Estado CHAR (2) NOT NULL
);

INSERT INTO Fornecedores VALUES ('Henrique', 'Av Brasil', 'Rio de Janeiro', 'RJ');
INSERT INTO Fornecedores VALUES ('Marcelo Augusto', 'Rua Imigrantes', 'Belo Horizonte', 'MG');
INSERT INTO Fornecedores VALUES ('Caroline Silva', 'Av São Paulo', 'Salvador', 'BA');
INSERT INTO Fornecedores VALUES ('Guilherme Staff', 'Rua Central', 'Porto Alegre', 'RS');
INSERT INTO Fornecedores VALUES ('Isabela Moraes', 'Av Juiz Grande', 'Curitiba', 'PR');
INSERT INTO Fornecedores VALUES ('Francisco Accerr','Av Paulista','São Paulo','SP');

SELECT * FROM Fornecedores;

SELECT Cidade FROM Fornecedores ORDER BY Cidade