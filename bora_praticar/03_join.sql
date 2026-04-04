--Qual mês tivemos mais lista de presença assinada?

SELECT  
        substr(DtCriacao, 1,7) AS anoMes,
        count(DISTINCT t1.IdTransacao) AS qtdeTransacao

FROM transacoes AS t1

lEFT JOIN transacao_produto AS t2
ON t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos AS t3
on t2.Idproduto = t3.Idproduto

WHERE DescNomeProduto = 'Lista de presença'

GROUP BY AnoMes
ORDER BY qtdeTransacao DESC