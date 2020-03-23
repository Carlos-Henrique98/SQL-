CREATE DATABASE Locacao;

USE Locacao;

CREATE TABLE Clientes(
IdClientes INT PRIMARY KEY IDENTITY,
NomeC VARCHAR(255) NOT NULL,
Rua VARCHAR(255) NOT NULL,
Cidade VARCHAR(255) NOT NULL
);

CREATE TABLE Locacao(
IdLocacao INT PRIMARY KEY IDENTITY,
DataLocacao VARCHAR(20) NOT NULL,
IdClientes INT FOREIGN KEY REFERENCES Clientes (IdClientes)
);

INSERT INTO Clientes VALUES ('Giovanna Goncalves Oliveira', 'Rua Mato Grosso', 'Canoas');
INSERT INTO Clientes VALUES ('Kauã Azevedo Ribeiro', 'Travessa Ibiá', 'Uberlandia');
INSERT INTO Clientes VALUES ('Rebeca Barbosa Santos', 'Rua Observatorio Meteorologico', 'Salvador');
INSERT INTO Clientes VALUES ('Sarah Carvalho Correia', 'Rua Antonio Carlos da Silva', 'Apucarana');
INSERT INTO Clientes VALUES ('Joao Almeida Lima', 'Rua Rio Taiuva', 'Ponta Grossa');
INSERT INTO Clientes VALUES ('Diogo Melo Dias', 'Rua Duzentos e Cinquenta', 'Várzea Grande');

INSERT INTO Locacao VALUES ('2016-10-09', 3);
INSERT INTO Locacao VALUES ('2016-09-02', 1);
INSERT INTO Locacao VALUES ('2016-08-02', 4);
INSERT INTO Locacao VALUES ('2016-09-02', 2);
INSERT INTO Locacao VALUES ('2016-03-02', 6);
INSERT INTO Locacao VALUES ('2016-04-04', 4);

SELECT * FROM Clientes;
SELECT * FROM Locacao;

SELECT IdClientes,NomeC FROM Clientes
WHERE IdClientes = 5