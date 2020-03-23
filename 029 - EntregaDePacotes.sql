CREATE DATABASE EntregaDePacotes;

USE EntregaDePacotes;

CREATE TABLE Usuarios(
IdUsuario INT PRIMARY KEY IDENTITY,
NomeU VARCHAR(50) NOT NULL,
Tipo CHAR,
Endereco VARCHAR(50) NOT NULL
);

CREATE TABLE Pacotes(
IdPacotes INT PRIMARY KEY IDENTITY,
IdUsuario_Remetente INT FOREIGN KEY REFERENCES Usuarios (IdUsuario),
IdUsuario_Receptor INT FOREIGN KEY REFERENCES Usuarios (IdUsuario),
Cor VARCHAR(50) NOT NULL,
Ano INT NOT NULL
);

INSERT INTO Usuarios VALUES ('Edgar Codd','England');
INSERT INTO Usuarios VALUES ('Peter Chen', 'Taiwan');
INSERT INTO Usuarios VALUES ('Jim Gray', 'United States');
INSERT INTO Usuarios VALUES ('Elizabeth ONeil', 'United States');

INSERT INTO Pacotes VALUES (1,2, 'Blue', 2015);
INSERT INTO Pacotes VALUES (1,3, 'Blue', 2019);
INSERT INTO Pacotes VALUES (2,4, 'Red', 2019);
INSERT INTO Pacotes VALUES (2,1, 'Green',2018);
INSERT INTO Pacotes VALUES (3,4, 'Red', 2015);
INSERT INTO Pacotes VALUES (4,3, 'Blue', 2019);

SELECT Ano, NomeU AS Sender,NomeU AS Receiver 
FROM Usuarios U INNER JOIN Pacotes P ON U.IdUsuario = P.IdUsuario_Remetente
