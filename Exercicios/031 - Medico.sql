CREATE DATABASE Medico;

USE Medico;

CREATE TABLE Doutor(
IdDoutor INT PRIMARY KEY IDENTITY,
NomeDoutor VARCHAR(50) NOT NULL
);

CREATE TABLE TurnoTrabalho(
IdTurnoTrabalho INT PRIMARY KEY IDENTITY,
NomeTurno VARCHAR(50) NOT NULL,
Bonus INT NOT NULL
);

CREATE TABLE Presencas(
IdPresencas INT PRIMARY KEY IDENTITY,
Horas INT NOT NULL,
IdDoutor INT FOREIGN KEY REFERENCES Doutor (IdDoutor),
IdTurnoTrabalho INT FOREIGN KEY REFERENCES TurnoTrabalho (IdTurnoTrabalho)
);

INSERT INTO Doutor VALUES ('Arlino');
INSERT INTO Doutor VALUES ('Tiago');
INSERT INTO Doutor VALUES ('Amanda');
INSERT INTO Doutor VALUES ('Wellington');

INSERT INTO Presencas VALUES (1,'5',1);
INSERT INTO Presencas VALUES (3,'2',1);
INSERT INTO Presencas VALUES (3,'3',2);
INSERT INTO Presencas VALUES (2,'2',3);
INSERT INTO Presencas VALUES (1,'5',3);
INSERT INTO Presencas VALUES (4,'1',3);
INSERT INTO Presencas VALUES (4,'2',1);
INSERT INTO Presencas VALUES (3,'2',2);
INSERT INTO Presencas VALUES (2,'4',2);

INSERT INTO TurnoTrabalho VALUES('Nocturnal', 15);
INSERT INTO TurnoTrabalho VALUES('Afternoon', 2);
INSERT INTO TurnoTrabalho VALUES('Day',1);

SELECT * FROM TurnoTrabalho;
SELECT * FROM Presencas;
SELECT * FROM Doutor;

SELECT D.NomeDoutor, ROUND(SUM((P.Horas * 150) + (((P.Horas * 150) * T.Bonus) / 100)),1 ) AS Salario
FROM Doutor D INNER JOIN Presencas P ON D.IdDoutor = P.IdDoutor
INNER JOIN TurnoTrabalho T ON T.IdTurnoTrabalho =P.IdTurnoTrabalho