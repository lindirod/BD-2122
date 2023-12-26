.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

SELECT * FROM Jogo;

INSERT INTO Jogo (idJogo, regulamentacao, pontuacao, idEstudio) VALUES (9,'O número máximo de jogadores é 3',100,679);
INSERT INTO Jogo (idJogo, regulamentacao, pontuacao, idEstudio) VALUES (18,'Não há limite de apostas',500,671);

SELECT * FROM Jogo;
SELECT * FROM JogoModalidade;

DELETE FROM Jogo WHERE idJogo = 18;
DELETE FROM Jogo WHERE idJogo = 9;