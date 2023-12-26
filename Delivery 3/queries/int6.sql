.mode columns
.headers on
.nullvalue NULL

-----------------------TOP 3 de Jogadores com o maior investimento total e o respetivo saldo----------

SELECT Pessoa.nome, Conta.investimentoTotal, Conta.saldo
FROM Pessoa, Conta
WHERE Conta.idJogador = Pessoa.idPessoa
ORDER BY Conta.investimentoTotal desc limit 3;
