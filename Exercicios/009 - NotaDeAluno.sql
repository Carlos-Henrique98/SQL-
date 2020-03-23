CREATE DATABASE NotaDAluno;

USE NotaDAluno;

CREATE TABLE Estudantes(
IdEstudante INT PRIMARY KEY IDENTITY,
NomeE VARCHAR(255) NOT NULL,
Grade DECIMAL(5,2) NOT NULL
);

INSERT INTO Estudantes VALUES ('Terry B. Padilla', 7.3);
INSERT INTO Estudantes VALUES ('William S. Ray', 0.6);
INSERT INTO Estudantes VALUES ('Barbara A. Gongora',5.2);
INSERT INTO Estudantes VALUES ('Julie B. Manzer', 6.7);
INSERT INTO Estudantes VALUES ('Tereza J. Axtell', 4.6);
INSERT INTO Estudantes VALUES ('Ben M. Dantzler', 9.6);

SELECT * FROM Estudantes;

SELECT 'Aprovado: ' + NomeE AS NomeAluno, Grade FROM Estudantes
WHERE Grade > 7


DROP TABLE Estudantes;