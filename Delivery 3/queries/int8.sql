.mode columns
.headers on
.nullvalue NULL

--------------------Jogadores que tentaram ultrapassar o limite de apostas imposta pela regulamentação do tipo de jogo--------------------

SELECT DISTINCT Pessoa.nome, JogadorApostaJogo.valorAposta
FROM Pessoa JOIN JogadorApostaJogo
ON Pessoa.idPessoa = JogadorApostaJogo.idJogador
WHERE JogadorApostaJogo.idJogo = 13 AND JogadorApostaJogo.valorAposta > 200;
