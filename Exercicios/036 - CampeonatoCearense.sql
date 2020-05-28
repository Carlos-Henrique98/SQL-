CREATE DATABASE CampeonatoCearense;

USE CampeonatoCearense;

CREATE TABLE Times(
IdTime INT PRIMARY KEY IDENTITY,
NomeT VARCHAR(50) NOT NULL
);

CREATE TABLE Partidas(
IdPartida INT PRIMARY KEY IDENTITY,
GolTime1 INT NOT NULL,
GolTime2 INT NOT NULL,
Time1 INT FOREIGN KEY REFERENCES Times (IdTime),
Time2 INT FOREIGN KEY REFERENCES Times (IdTime)
);

INSERT INTO Times VALUES ('CEARA');
INSERT INTO Times VALUES ('FORTALEZA');
INSERT INTO Times VALUES ('GUARANY DE SOBRAL');
INSERT INTO Times VALUES ('FLORESTA');

INSERT INTO Partidas VALUES (0,4,4,1);
INSERT INTO Partidas VALUES (0,1,3,2);
INSERT INTO Partidas VALUES (3,0,1,3);
INSERT INTO Partidas VALUES (0,1,3,4);
INSERT INTO Partidas VALUES (0,0,1,2);
INSERT INTO Partidas VALUES (2,1,2,4);

SELECT * FROM Partidas;
SELECT * FROM Times;

SELECT
(
SELECT NomeT FROM Times T
WHERE T.IdTime = NomeT.IdTime
)AS Nome,

(
SELECT COUNT(Time1)
FROM Partidas 
WHERE Time1 = NomeT.IdTime
)+(
SELECT COUNT(Time2)
FROM Partidas
WHERE Time2 = NomeT.IdTime 
) AS Partidas,

(
SELECT SUM(CASE WHEN GolTime2 > GolTime1 THEN 1 ELSE 0 END) AS Vitorias
FROM Times T INNER JOIN Partidas P ON T.IdTime = P.Time2
WHERE T.IdTime = NomeT.IdTime
)+(
SELECT SUM(CASE WHEN GolTime1 > GolTime2 THEN 1 ELSE 0 END)
FROM Times T INNER JOIN Partidas P ON T.IdTime = P.Time1
WHERE T.IdTime = NomeT.IdTime