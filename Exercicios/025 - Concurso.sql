CREATE DATABASE ConcursoMedia;

USE ConcursoMedia;

CREATE TABLE Candidato(
IdCandidato INT PRIMARY KEY IDENTITY,
NomeC VARCHAR(255) NOT NULL
);

CREATE TABLE Ponto(
IdCandidato INT FOREIGN KEY REFERENCES Candidato (IdCandidato),
Matematica INT NOT NULL,
Especifica INT NOT NULL,
Plano_projeto INT NOT NULL
);

INSERT INTO Candidato VALUES('Michael P Cannon');
INSERT INTO Candidato VALUES('Barbra J Cable');
INSERT INTO Candidato VALUES('Ronald D Jones');
INSERT INTO Candidato VALUES('Timonthy K Fitzsimmons');
INSERT INTO Candidato VALUES('Ivory B Morrison');
INSERT INTO Candidato VALUES('Sheila R Denis');
INSERT INTO Candidato VALUES('Edward C Durgan');
INSERT INTO Candidato VALUES('William K Spencer');
INSERT INTO Candidato VALUES('Donna D Pursley');
INSERT INTO Candidato VALUES('Ann C Davis');


INSERT INTO Ponto VALUES (1, 76, 58, 21);
INSERT INTO Ponto VALUES (2, 4, 5, 22);
INSERT INTO Ponto VALUES (3, 15, 59, 12);
INSERT INTO Ponto VALUES (4, 41, 42, 99);
INSERT INTO Ponto VALUES (5, 22, 90, 9);
INSERT INTO Ponto VALUES (6, 82, 77, 15);
INSERT INTO Ponto VALUES (7, 82, 99, 56);
INSERT INTO Ponto VALUES (8, 11, 4, 22);
INSERT INTO Ponto VALUES (9, 16, 29, 94);
INSERT INTO Ponto VALUES (10, 1, 7, 59);

DROP TABLE Ponto;
DROP TABLE Candidato;

SELECT * FROM Ponto;
SELECT * FROM Candidato;

SELECT NomeC AS Candidato, ((Matematica*2) + (Especifica * 3) + (Plano_Projeto * 5)) / 10 AS Total 
FROM Ponto P INNER JOIN Candidato C ON P.IdCandidato = C.IdCandidato
ORDER BY Total DESC;


