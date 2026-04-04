--Qual cliente juntou mais pontos positivos em 2025-05?

SELECT idcliente,
        sum(qtdepontos) As  TotalPontos

FROM transacoes

WHERE dtcriacao >= '2025-05-01'
AND dtcriacao < '2025-06-01'
AND qtdepontos > 0                     

GROUP  BY idcliente 

ORDER by TotalPontos DESC 

LIMIT 1