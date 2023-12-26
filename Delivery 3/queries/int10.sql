.mode columns
.headers on
.nullvalue NULL

-------------------------ID’s de jogadores que jogam Barbie Blackjack -----------------------------

SELECT DISTINCT idJogador
FROM JogadorApostaJogo
WHERE JogadorApostaJogo.idJogo = '12'
ORDER BY JogadorApostaJogo.idJogo ASC;
