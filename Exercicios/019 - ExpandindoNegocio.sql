CREATE DATABASE ExpandindoNegocio;

USE ExpandindoNegocio;

CREATE TABLE Clientes(
IdClientes INT PRIMARY KEY IDENTITY,
NomeC VARCHAR(255) NOT NULL,
Rua VARCHAR(255) NOT NULL,
Cidade VARCHAR(255) NOT NULL
);

INSERT INTO Clientes VALUES ('Giovanna Goncalves Oliveira', 'Rua Mato Grosso', 'Canoas');
INSERT INTO Clientes VALUES ('Kauã Azevedo Ribeiro', 'Travessa Ibiá', 'Uberlândia');
INSERT INTO Clientes VALUES ('Rebeca Barbosa Santos', 'Rua Observatório Meteorológico','Salvador');
INSERT INTO Clientes VALUES ('Sarah Carvalho Correia', 'Rua Antônio Carlos da Silva', 'Uberlândia');
INSERT INTO Clientes VALUES ('João Almeida Lima', 'Rua Rio Taiuva', 'Ponta Grossa');
INSERT INTO Clientes VALUES ('Diogo Melo Dias', 'Rua Duzentos e Ciquenta', 'Várzea Grande');

SELECT * FROM CLientes;