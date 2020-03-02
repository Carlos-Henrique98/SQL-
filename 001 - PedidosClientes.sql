CREATE DATABASE Pedidos;

USE Pedidos;

CREATE TABLE Clientes(
IdCliente INT PRIMARY KEY IDENTITY,
NomeC VARCHAR(255) NOT NULL,
Rua VARCHAR(255) NOT NULL,
Cidade VARCHAR(255) NOT NULL,
Estado CHAR(2) NOT NULL,
CreditoLimitado  INT NOT NULL
);

CREATE TABLE Pedidos(
IdPedido INT PRIMARY KEY IDENTITY,
DataPedido VARCHAR(20) NOT NULL,
IdCliente INT FOREIGN KEY REFERENCES Clientes (IdCliente)
);

INSERT INTO Clientes VALUES ('Nicolas Diogo Cardoso', 'Acesso Um', 'Porto Alegre', 'RS', 475);
INSERT INTO Clientes VALUES ('Cecilia Olivia Rodrigues', 'Rua Sizuka Usuy', 'Cianorte', 'PR', 3170);
INSERT INTO Clientes VALUES ('Augusto Fernando Carlos Eduardo Cardoso', 'Rua Baldomiro Koerich', 'Palhoça', 'SC', 1067);
INSERT INTO Clientes VALUES ('Nicolas Diogo Cardoso', 'Acesso Um', 'Porto Alegre', 'RS', 475);
INSERT INTO Clientes VALUES ('Sabrina Heloisa Gabriela Barros', 'Rua Engenheiro Tito Marques Fernandes', 'Porto Alegre', 'RS', 4312);
INSERT INTO Clientes VALUES ('Joaquim Diego Araujo', 'Rua Vitorino', 'Novo Hamburgo', 'RS', 2314);

INSERT INTO Pedidos VALUES ('2016-05-13',3);
INSERT INTO Pedidos VALUES ('2016-01-12', 2);
INSERT INTO Pedidos VALUES ('2016-04-18',5);
INSERT INTO Pedidos VALUES ('2016-09-07', 4);
INSERT INTO Pedidos VALUES ('2016-02-13',6);
INSERT INTO Pedidos VALUES ('2016-08-05', 3);

SELECT * FROM Pedidos;
SELECT * FROM Clientes;

SELECT NomeC AS Nome FROM Clientes
WHERE CreditoLimitado > 1000