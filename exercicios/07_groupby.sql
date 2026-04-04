--Qual o produto mais transacionado?

SELECT  IdProduto,
       -- count(*)
        sum(QtdeProduto) AS QtdeProdutoSum
from transacao_produto

GROUP BY IdProduto
ORDER BY count(*) DESC  
