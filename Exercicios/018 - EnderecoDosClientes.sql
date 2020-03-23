CREATE DATABASE EnderecoClientes;

USE EnderecoClientes;

CREATE TABLE Clientes(
IdCliente INT PRIMARY KEY IDENTITY,
NomeC VARCHAR(255) NOT NULL,
Rua VARCHAR(255) NOT NULL,
Cidade VARCHAR(255) NOT NULL,
Estado CHAR(2) NOT NULL,
Credito_Limitado DECIMAL(6,2) NOT NULL
);

INSERT INTO Clientes VALUES ('Pedro Augusto da Rocha','Rua Pedro Carlos Hoffman', 'Porto Alegre', 'RS', 700.00)
INSERT INTO Clientes VALUES ('Antonio Carlos Mamel','Av. Pinheiros','Belo Horizonte','MG', 3500.50);
INSERT INTO Clientes VALUES ('Luiza Augusta Mhor', 'Rua Salto Grande', 'Niteroi', 'RJ', 4000.00);
INSERT INTO Clientes VALUES ('Jane Ester', 'Av 7 de setembro', 'Erechim', 'RS', 800.00);
INSERT INTO Clientes VALUES ('Marcos Antônio dos Santos', 'Av Farrapos', 'Porto Alegre', 'RS', 4250.25);

SELECT * FROM Clientes;

SELECT NomeC, Rua FROM Clientes
WHERE Cidade = 'Porto Alegre';

