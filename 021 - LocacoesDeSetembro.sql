CREATE DATABASE LocacaoSetembro;

USE LocacaoSetembro;

CREATE TABLE Clientes(
IdCliente INT PRIMARY KEY IDENTITY,
NomeC VARCHAR(255) NOT NULL,
Rua VARCHAR(255) NOT NULL,
Cidade VARCHAR(255) NOT NULL
);

CREATE TABLE Aluguel(
IdAluguel INT PRIMARY KEY IDENTITY,
DataAluguel DATETIME NOT NULL,
IdCliente INT FOREIGN KEY REFERENCES Clientes (IdCliente)
);

INSERT INTO Clientes VALUES ('Giovanna Gonçalve Oliveira', 'Rua Mato Grosso', 'Canoas');
INSERT INTO Clientes VALUES ('Kauã Azevedo Ribeiro', 'Travessa Ibiá', 'Uberlandia')
INSERT INTO Clientes VALUES ('Rebeca Barbosa Santos', 'Rua Observatório Meteorologico', 'Salvador');
INSERT INTO Clientes VALUES ('Sarah Carvalho Correia', 'Rua Antônio Carlos da Silva', 'Apucarana');
INSERT INTO Clientes VALUES ('João Almeida Lima', 'Rua Rio Taiuva', 'Ponta Grossa');
INSERT INTO Clientes VALUES ('Diogo Melo Dias', 'Rua Duzentos e Cinquenta', 'Varzea Grande');

INSERT INTO Aluguel VALUES ('2016-10-09', 3);
INSERT INTO Aluguel VALUES ('2016-09-02', 1);
INSERT INTO Aluguel VALUES ('2016-08-02', 4);
INSERT INTO Aluguel VALUES ('2016-08-02', 2);
INSERT INTO Aluguel VALUES ('2016-03-02', 6);
INSERT INTO Aluguel VALUES ('2016-04-04', 4);

SELECT * FROM Clientes;
SELECT * FROM Aluguel;

SELECT NomeC , IdAluguel
FROM Clientes C INNER JOIN Aluguel A ON C.IdCliente = A.IdCliente
WHERE IdAluguel = 1;