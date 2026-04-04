--Em 2024, quantas transações de Lovers tivemos?

SELECT  count(DISTINCT t1.IdTransacao), 
        t1.IdCliente,
        t1.DtCriacao,
        t2.IdProduto,
        t3.DescCategoriaProduto

FROM transacoes as t1

LEFT JOIN transacao_produto AS t2
ON  t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos as t3
ON t2.IdProduto = t3.IdProduto


WHERE t1.DtCriacao >= '2024-01-01'
AND t1.DtCriacao < '2025-01-01'
--AND t3.DescCategoriaProduto = 'lovers'

GROUP BY t3.DescCategoriaProduto
HAVING count(DISTINCT t1.IdTransacao) < 1000
ORDER BY count(DISTINCT t1.IdTransacao) DESC