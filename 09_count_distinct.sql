SELECT 
		count(*) as QtdeDeLinha,
        count(DISTINCT IdTransacao) AS QtdeDeTransacao,
        Count(DISTINCT idcliente) As QtdeDeCliente

FROM transacoes

WHERE dtcriacao >= '2025-07-01'
and dtcriacao < '2025-08-01'

ORDER by dtcriacao Desc