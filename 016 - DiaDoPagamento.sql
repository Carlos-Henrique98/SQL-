CREATE DATABASE DiaPagamento;

USE DiaPagamento;

CREATE TABLE Emprestimo(
IdEmprestimo INT PRIMARY KEY IDENTITY,
NomeE VARCHAR(255) NOT NULL,
Valor DECIMAL(6,2) NOT NULL,
DiaPagamento DATE NOT NULL
);

INSERT INTO Emprestimo VALUES ('Cristian Ghprievy', 3000.50, '2017-10-19');
INSERT INTO Emprestimo VALUES ('John Serial', 10000, '2017-10-10');
INSERT INTO Emprestimo VALUES ('Michael Seven', 5000.40, '2017-10-17');
INSERT INTO Emprestimo VALUES ('Joana Cabel', 2000, '2017-10-05');
INSERT INTO Emprestimo VALUES ('Miguel Santos', 4050, '2017-10-20');

SELECT * FROM Emprestimo;

SELECT NomeE, DAY(DiaPagamento) AS Dia FROM Emprestimo;