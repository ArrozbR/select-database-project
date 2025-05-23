/*Desafio 1*/
SELECT Nome, Ano FROM Filmes;

/*Desafio 2*/
SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano ASC; --ou SELECT Nome, Ano FROM Filmes ORDER BY Ano ASC;

/*Desafio 3*/
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro';

/*Desafio 4*/
SELECT * FROM Filmes WHERE Ano = 1997;

/*Desafio 5*/
SELECT * FROM Filmes WHERE Ano > 2000;

/*Desafio 6*/
SELECT * FROM Filmes WHERE Duracao > 100 and Duracao < 150 ORDER BY Duracao ASC;

/*Desafio 7*/
SELECT Ano, COUNT(Nome) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC; --ou SELECT Ano, COUNT(Nome) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY Duracao DESC;

/*Desafio 8*/
SELECT * FROM Atores WHERE Genero = 'M';

/*Desafio 9*/
SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;

/*Desafio 10*/	
SELECT Filmes.Nome, Generos.Genero FROM Generos INNER JOIN FilmesGenero ON Generos.Id = FilmesGenero.IdGenero INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id;

/*Desafio 11*/
SELECT Filmes.Nome, Generos.Genero FROM Generos INNER JOIN FilmesGenero ON Generos.Id = FilmesGenero.IdGenero INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id
WHERE Generos.Genero = 'Mistério';

/*Desafio 12*/
SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel FROM Filmes INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor