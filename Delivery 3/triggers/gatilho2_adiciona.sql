
--- Gatilho 2: Ao inserir um jogo tem que se inserir também uma modalidade -------------

-- Se o id do novo Jogo for menor que 14, a modalidade é "multiplayer"

CREATE TRIGGER ModalidadeMultiplayer
AFTER INSERT ON Jogo
FOR EACH ROW
WHEN NEW.idJogo < 14
BEGIN
    INSERT INTO JogoModalidade VALUES (NEW.idJogo, 45);
END;

--se o id do novo Jogo for maior que 13, a modalidade é "computador"
CREATE TRIGGER ModalidadeComputador
AFTER INSERT ON Jogo
FOR EACH ROW
WHEN New.idJogo > 13
BEGIN
    INSERT INTO JogoModalidade VALUES (NEW.idJogo, 59);
END;


-- Se o jogo for eliminado, então na tabela JogoModalidade, também é apagada a linha correspondente
CREATE TRIGGER apagarModalidade
AFTER DELETE ON Jogo
FOR EACH ROW
BEGIN
    DELETE FROM JogoModalidade WHERE idJogo = Old.idJogo;
END;




