.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

SELECT * FROM Conta;
SELECT * FROM Jogador;

DELETE FROM Conta where Conta.saldo < -300;

SELECT * FROM Conta;
SELECT * FROM Jogador;
