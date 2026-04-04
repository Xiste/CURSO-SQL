--12. Dentre os clientes de janeiro/2025, 
--quantos assistiram o curso de SQL?

WITH tb_cliente_janeiro AS(
    SELECT DISTINCT idCliente
    FROM transacoes
    WHERE dtCriacao >= '2025-01-01'
    AND dtCriacao < '2025-02-01'
),

tb_cliente_curso AS (
    SELECT  DISTINCT idCliente
    FROM transacoes 
    WHERE dtCriacao >= '2025-08-25'
    AND dtCriacao < '2025-08-30'
)

SELECT  count(t1.idCliente) AS clientesJaneiro,
        count(t2.idCliente) AS ClienteCurso

FROM tb_cliente_janeiro AS t1

LEFT JOIN tb_cliente_curso as t2
ON t1.idCliente = t2.idCliente