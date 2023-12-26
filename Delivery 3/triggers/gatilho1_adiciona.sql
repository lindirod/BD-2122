.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

--- Gatilho 1: Sinaliza o jogador que tentou ultrapassar o valor máximo imposto pela regulamentação do jogo com id = 13 -------------

CREATE TRIGGER sinalizacao
AFTER INSERT ON JogadorApostaJogo
FOR EACH ROW
BEGIN
    SELECT CASE
        WHEN (SELECT valorAposta FROM JogadorApostaJogo WHERE valorAposta > 200 AND idJogo = 13)
    THEN RAISE(fail, 'Aposta invalida')
END;
END;










