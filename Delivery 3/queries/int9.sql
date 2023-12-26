.mode collumns
.headers on
.nullvallue NULL

-----Qual o segundo patrocinador que oferece menos dinheiro ao casino online e quanto  tempo falta para acabar o contrato que assinou----

SELECT entidade, montante, julianday(dataFim)-julianday(dataInicio) 'Days'
FROM Patrocinio
WHERE montante = (SELECT min(montante) FROM Patrocinio WHERE montante NOT IN (SELECT min(montante) FROM Patrocinio));