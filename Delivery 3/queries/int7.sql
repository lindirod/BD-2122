.mode collumns
.headers on
.nullvallue NULL

----Tipos de jogos com maior número de apostadores----

SELECT (Modalidade.tipoJogo) ,count(*) AS nr_jogadas
FROM Modalidade
LEFT JOIN JogoModalidade ON Modalidade.idModalidade = JogoModalidade.idModalidade
LEFT JOIN JogadorApostaJogo ON JogoModalidade.idJogo = JogadorApostaJogo.idJogo
GROUP BY Modalidade.tipoJogo
ORDER BY nr_jogadas DESC limit 1;
