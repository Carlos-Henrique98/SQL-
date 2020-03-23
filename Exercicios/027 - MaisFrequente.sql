CREATE DATABASE MaisFrequente;

USE MaisFrequente;

CREATE TABLE TabelaValor(
Quantidade INT NOT NULL
);

INSERT INTO TabelaValor VALUES (4);
INSERT INTO TabelaValor VALUES (6);
INSERT INTO TabelaValor VALUES (7);
INSERT INTO TabelaValor VALUES (1);
INSERT INTO TabelaValor VALUES (1);
INSERT INTO TabelaValor VALUES (2);
INSERT INTO TabelaValor VALUES (3);
INSERT INTO TabelaValor VALUES (2);
INSERT INTO TabelaValor VALUES (3);
INSERT INTO TabelaValor VALUES (1);
INSERT INTO TabelaValor VALUES (5);
INSERT INTO TabelaValor VALUES (6);
INSERT INTO TabelaValor VALUES (1);
INSERT INTO TabelaValor VALUES (7);
INSERT INTO TabelaValor VALUES (8);
INSERT INTO TabelaValor VALUES (9);
INSERT INTO TabelaValor VALUES (10);
INSERT INTO TabelaValor VALUES (11);
INSERT INTO TabelaValor VALUES (12);
INSERT INTO TabelaValor VALUES (4);
INSERT INTO TabelaValor VALUES (5);
INSERT INTO TabelaValor VALUES (5);
INSERT INTO TabelaValor VALUES (3);
INSERT INTO TabelaValor VALUES (6);
INSERT INTO TabelaValor VALUES (2);
INSERT INTO TabelaValor VALUES (2);
INSERT INTO TabelaValor VALUES (1);

SELECT * FROM TabelaValor;

SELECT TOP 3 Quantidade, COUNT(*) AS 'Valor Mais Frequente' FROM TabelaValor
GROUP BY Quantidade ORDER BY 'Valor Mais Frequente' DESC;


SELECT TOP 1 Quantidade AS 'Valor Mais Frequente' FROM TabelaValor
GROUP BY Quantidade;