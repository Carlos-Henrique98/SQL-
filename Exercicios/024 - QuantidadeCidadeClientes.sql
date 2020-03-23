CREATE DATABASE QuantCidadesCliente;

USE QuantCidadesCliente;

CREATE TABLE Clientes(
IdCliente INT PRIMARY KEY IDENTITY,
NomeC VARCHAR(255) NOT NULL,
Rua VARCHAR(255) NOT NULL,
Cidade VARCHAR(255) NOT NULL,
Estado VARCHAR(255) NOT NULL,
Limitado_Credito INT NOT NULL
);

INSERT INTO Clientes VALUES ('Nicolas Diogo Cardoso', 'Acesso Um', 'Porto Alegre', 'RS', 475);
INSERT INTO Clientes VALUES ('Cecília Olivia Rodrigues', 'Rua Sizuka Usuy', 'Cianorte', 'PR', 3170);
INSERT INTO Clientes VALUES ('Augusto Fernando Carlos Eduardo Cardoso', 'Rua Baldomiro Koerich', 'Palhoça', 'SC', 1067);
INSERT INTO Clientes VALUES ('Nicolas Diogo Cardoso', 'Acesso Um', 'Porto Alegre', 'RS', 475);
INSERT INTO Clientes VALUES ('Sabrina Heloisa Gabriela Barros', 'Rua Engenheiro Tito Marques Fernandes', 'Porto Alegre', 'RS', 4312);
INSERT INTO Clientes VALUES ('Joaquim Diego Lorenzo Araujo', 'Rua Vitorino', 'Novo Hamburgo', 'RS', 2314);

SELECT * FROM Clientes;

SELECT COUNT(Rua) AS Quantidade FROM Clientes
WHERE Rua NOT LIKE 'Acesso Um%';
