CREATE DATABASE MultiversoRichard;

USE MultiversoRichard;

CREATE TABLE Dimensao(
IdDimensao INT PRIMARY KEY IDENTITY,
NomeD VARCHAR(255) NOT NULL
);

CREATE TABLE RegistroVida(
IdRegistroVida INT PRIMARY KEY IDENTITY,
NomeRV VARCHAR(255) NOT NULL,
Omega DECIMAL(2,1) NOT NULL,
IdDimensao INT FOREIGN KEY REFERENCES Dimensao (IdDimensao)
);

INSERT INTO Dimensao VALUES ('C774');
INSERT INTO Dimensao VALUES ('C784');
INSERT INTO Dimensao VALUES ('C794');
INSERT INTO Dimensao VALUES ('C824');
INSERT INTO Dimensao VALUES ('C875');

INSERT INTO RegistroVida VALUES ('Richard Postman', 5.6, 2);
INSERT INTO RegistroVida VALUES ('Simple Jelly', 1.4, 1);
INSERT INTO RegistroVida VALUES ('Richard Gran Master', 2.5, 1);
INSERT INTO RegistroVida VALUES ('Richard Turing', 6.4, 4);
INSERT INTO RegistroVida VALUES ('Richard Strall', 1.0, 3);

SELECT * FROM Dimensao;
SELECT * FROM RegistroVida;

SELECT NomeRV AS Nome, Omega * 1.618 AS 'Fator N' FROM RegistroVida
WHERE Omega = 2.5

SELECT NomeRV, Omega FROM RegistroVida

DROP TABLE RegistroVida