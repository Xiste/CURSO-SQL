--SELECT idproduto,
--		count(*)

--FROM transacao_produto

--GROUP by idproduto 

SELECT idcliente,
		sum(qtdepontos),
        count(idtransacao)

FROM transacoes

WHERE dtcriacao >= '2025-07-01'
AND dtcriacao < '2025-08-01'

GROUP BY idcliente
HAVING sum(qtdepontos) >= 4000

ORDER by sum(qtdepontos) DESC
 
 LIMIT 10
