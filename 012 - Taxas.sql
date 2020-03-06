CREATE DATABASE Taxas;

USE Taxas;

CREATE TABLE Pessoas(
IdPessoas INT PRIMARY KEY IDENTITY,
NomeP VARCHAR(255) NOT NULL,
Salario DECIMAL(6,2) NOT NULL,
Taxa AS (Salario * 0.1) + Salario
);

INSERT INTO Pessoas VALUES ('James M. Tabarez', 883);
INSERT INTO Pessoas VALUES ('Rafael T. Hendon', 4281);
INSERT INTO Pessoas VALUES ('Linda J. Gardner', 4437);
INSERT INTO Pessoas VALUES ('Nicholas J. Conn', 8011);
INSERT INTO Pessoas VALUES ('Karol A. Morales', 2508);
INSERT INTO Pessoas VALUES ('Lolita S. Graves', 8709);

SELECT * FROM Pessoas;

DROP TABLE Pessoas;

SELECT NomeP,Taxa AS Taxa FROM Pessoas
WHERE Salario > 3000  