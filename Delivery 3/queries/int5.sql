.mode collumns
.headers on
.nullvallue NULL


----------TOP 5  de dias  com menor número de apostas e o respectivo tipo-------
SELECT dateTime, count(*) as nr_apostas, tipoAposta
FROM JogadorApostaJogo
INNER JOIN Aposta
ON JogadorApostaJogo.idAposta = Aposta.idAposta
Group by JogadorApostaJogo.dateTime
order by jogadas  ASC limit 5;