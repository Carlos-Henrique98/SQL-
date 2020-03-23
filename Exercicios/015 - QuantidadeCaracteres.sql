CREATE DATABASE QuantidadeCaracter;

USE QuantidadeCaracter;

CREATE TABLE Pessoas(
IdPessoas INT PRIMARY KEY IDENTITY,
NomeP VARCHAR(255) NOT NULL
);

INSERT INTO Pessoas VALUES ('Karen');
INSERT INTO Pessoas VALUES ('Manuel');
INSERT INTO Pessoas VALUES ('Valentine');
INSERT INTO Pessoas VALUES ('Jo');

SELECT * FROM Pessoas;
DROP TABLE Pessoas;

SELECT NomeP, len(NomeP) AS Tamanho  FROM Pessoas
ORDER BY NomeP DESC;