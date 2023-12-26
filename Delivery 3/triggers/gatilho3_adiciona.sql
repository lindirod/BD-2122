.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

--- Gatilho 3: Caso o jogador tenha saldo com uma quantia inferior a -300 euros ou mais, a sua conta é suspensa -------------

CREATE TRIGGER contaSuspensa
AFTER DELETE ON Conta
FOR EACH ROW
BEGIN
    DELETE FROM Jogador WHERE idPessoa = Old.idJogador;
END;