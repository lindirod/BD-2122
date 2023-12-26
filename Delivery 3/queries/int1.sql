.mode columns
.headers on
.nullvalue NULL


-------Tipos de levantamento de moeda mais populares na plataforma online de apostas-----

SELECT MetodoLevantamento.tipoLevantamento
FROM ContaMetodoLevantamento, MetodoLevantamento
WHERE ContaMetodoLevantamento.idLevantamento = MetodoLevantamento.idLevantamento
GROUP BY MetodoLevantamento.tipoLevantamento
HAVING count(*) >= 2;


















