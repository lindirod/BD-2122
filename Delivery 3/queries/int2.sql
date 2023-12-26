.mode columns
.headers on
.nullvalue NULL

-----------Listar nome dos jogadores, por ordem alfabética, com apostas abaixo da média-----------

SELECT DISTINCT Pessoa.nome
FROM JogadorApostaJogo, Pessoa
WHERE (JogadorApostaJogo.valorAposta) > (Select avg(JogadorApostaJogo.valorAposta) from JogadorApostaJogo) AND JogadorApostaJogo.idJogador = Pessoa.idPessoa
ORDER BY Pessoa.nome ASC;