CREATE DATABASE FilmesPromocao

USE FilmesPromocao

CREATE TABLE Precos(
IdPreco INT PRIMARY KEY IDENTITY,
Categorias VARCHAR(255) NOT NULL,
Valor DECIMAL (6,2) NOT NULL
);

CREATE TABLE Filmes(
IdFilme INT PRIMARY KEY IDENTITY,
NomeF VARCHAR(255) NOT NULL,
IdPreco INT FOREIGN KEY REFERENCES Precos(IdPreco)
);

INSERT INTO Precos VALUES ('Releases', 3.50);
INSERT INTO Precos VALUES ('Bronze Seal',2.00);
INSERT INTO Precos VALUES ('Silver Seal', 2.50);
INSERT INTO Precos VALUES ('Gold Seal', 3.00);
INSERT INTO Precos VALUES ('Promotion', 1.50);

INSERT INTO Filmes VALUES ('Batman', 3);
INSERT INTO Filmes VALUES ('The Battle of the Dark River', 3);
INSERT INTO Filmes VALUES ('White Duck', 5);
INSERT INTO Filmes VALUES ('Breaking Barriers', 4);
INSERT INTO Filmes VALUES ('The Two Hours' ,2);

SELECT * FROM Filmes;
SELECT * FROM Precos;

DROP TABLE Filmes;
DROP TABLE Precos;

SELECT IdFilme, NomeF FROM Filmes
WHERE IdFilme = 3;