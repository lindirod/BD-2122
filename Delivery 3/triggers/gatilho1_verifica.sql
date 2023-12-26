.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

SELECT * FROM Conta;

INSERT INTO JogadorApostaJogo (idJogador, idAposta, idJogo, valorAposta, dateTime) VALUES (79001, 25, 13, 205, '2021-06-24');
INSERT INTO JogadorApostaJogo (idJogador, idAposta, idJogo, valorAposta, dateTime) VALUES (78993, 24, 13, 300, '2020-01-26');
INSERT INTO JogadorApostaJogo (idJogador, idAposta, idJogo, valorAposta, dateTime) VALUES (78998, 23, 13, 500, '2021-10-10');

SELECT * FROM Conta;