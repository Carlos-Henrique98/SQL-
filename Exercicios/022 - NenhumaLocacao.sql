CREATE DATABASE NLocacao;

USE NLocacao;

CREATE TABLE Clientes(
IdClientes INT PRIMARY KEY IDENTITY,
NomeC VARCHAR(255) NOT NULL,
Rua VARCHAR(255) NOT NULL,
Cidade VARCHAR(255) NOT NULL
);

CREATE TABLE Localizacoes(
IdLocalizacao INT PRIMARY KEY IDENTITY,
DataLocalizacao VARCHAR(255) NOT NULL,
IdClientes INT FOREIGN KEY REFERENCES Clientes (IdClientes)
);

INSERT INTO Clientes VALUES ('Gionvanna Gon�alves Oliveira', 'Rua Mato Grosso', 'Canoas');
INSERT INTO Clientes VALUES ('Kau� Azevedo Ribeiro', 'Travessa Ibi�', 'Uberlandia');
INSERT INTO Clientes VALUES ('Rebeca Barboa Santos', 'Rua Observat�rio Meteorologico', 'Salvador');
INSERT INTO Clientes VALUES ('Sarah Carvalho Correia', 'Rua Ant�nio Carlos da Silva', 'Apucarana');
INSERT INTO Clientes VALUES ('Jo�o Almeida Lima', 'Rua Rio Taiuva', 'Ponta Grossa');
INSERT INTO Clientes VALUES ('Diogo Melo Dias', 'Rua Duzentos e Cinquenta', 'V�rzea Grande');

INSERT INTO Localizacoes VALUES ('2016-10-09', 3);
INSERT INTO Localizacoes VALUES ('2016-09-02', 1);
INSERT INTO Localizacoes VALUES ('2016-08-02', 4);
INSERT INTO Localizacoes VALUES ('2016-09-02',2);
INSERT INTO Localizacoes VALUES ('2016-03-02', 6);
INSERT INTO Localizacoes VALUES ('2016-04-04', 4);

SELECT IdClientes, NomeC
FROM Clientes
WHERE IdClientes = 5;