CREATE DATABASE ExpandindoNegocio;

USE ExpandindoNegocio;

CREATE TABLE Clientes(
IdClientes INT PRIMARY KEY IDENTITY,
NomeC VARCHAR(255) NOT NULL,
Rua VARCHAR(255) NOT NULL,
Cidade VARCHAR(255) NOT NULL
);

INSERT INTO Clientes VALUES ('Giovanna Goncalves Oliveira', 'Rua Mato Grosso', 'Canoas');
INSERT INTO Clientes VALUES ('Kau� Azevedo Ribeiro', 'Travessa Ibi�', 'Uberl�ndia');
INSERT INTO Clientes VALUES ('Rebeca Barbosa Santos', 'Rua Observat�rio Meteorol�gico','Salvador');
INSERT INTO Clientes VALUES ('Sarah Carvalho Correia', 'Rua Ant�nio Carlos da Silva', 'Uberl�ndia');
INSERT INTO Clientes VALUES ('Jo�o Almeida Lima', 'Rua Rio Taiuva', 'Ponta Grossa');
INSERT INTO Clientes VALUES ('Diogo Melo Dias', 'Rua Duzentos e Ciquenta', 'V�rzea Grande');

SELECT * FROM CLientes;