CREATE DATABASE Senhas;

USE Senhas;

CREATE TABLE Conta(
IdConta INT PRIMARY KEY IDENTITY,
NomeC VARCHAR(255) NOT NULL,
LoginC VARCHAR(255) NOT NULL,
SenhaC VARCHAR(255) NOT NULL
);

INSERT INTO Conta VALUES ('Joyce P. Parry', 'Promeraw', 'noh10ozei');
INSERT INTO Conta VALUES ('Michael T. Gonzalez', 'Phers1942', 'Iath3see9bi');
INSERT INTO Conta VALUES ('Heather W. Lawless', 'Hankicht', 'diShono4');
INSERT INTO Conta VALUES ('Otis C. Hitt', 'Conalothe', 'zooFohH7w');
INSERT INTO Conta VALUES ('Roger N. Brownfield', 'Worseente', 'fah7ohNg');

SELECT * FROM Conta;

SELECT HASHBYTES('MD5', 'noh10ozei') AS Senha;
SELECT HASHBYTES('MD5', 'Iath3see9bi') AS Senha;
SELECT HASHBYTES('MD5', 'diShono4') AS Senha;
SELECT HASHBYTES('MD5', 'zooFohH7w') AS Senha;
SELECT HASHBYTES('MD5', 'fah7ohNg') AS Senha;

SELECT IdConta, MD5 FROM Conta;