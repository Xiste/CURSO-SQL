--Qual o total de pontos trocados no Stream Elements em Junho de 2025?


SELECT sum(QtdePontos)

FROM transacao_produto AS t1

LEFT JOIN transacoes AS t2
ON t1.IdTransacao = t2.IdTransacao

WHERE   DtCriacao >= '2025-06-01'
AND     DtCriacao < '2025-07-01'

