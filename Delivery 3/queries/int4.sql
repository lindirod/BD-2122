.mode columns
.headers on
.nullvalue NULL

---------------------ID do utilizador com maior número de apostas e o respetivo número de apostas que seja de Espanha----------

SELECT JogadorApostaJogo.idJogador , count(*) AS nr_apostas
FROM JogadorApostaJogo
GROUP BY JogadorApostaJogo.idJogador
ORDER BY nr_apostas  DESC limit 1;
