.mode collumns
.headers on
.nullvallue NULL


----------Nomes dos utilizadores com acesso à promoção dos ‘Bons vícios’ e que não recorrem ao apoio ao cliente ----

SELECT DISTINCT Jogador.nomeUtilizador
FROM Jogador, PromocaoJogador , Promocao
WHERE PromocaoJogador.idPromocao = 80 AND PromocaoJogador.idJogador = Jogador.idPessoa
EXCEPT
SELECT Jogador.nomeUtilizador
FROM ApoioCliente, Jogador
WHERE ApoioCliente.idJogador = Jogador.idPessoa;