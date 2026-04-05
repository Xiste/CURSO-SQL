--Quantidade de usuários cadastrados (absoluto e acumulado) ao longo do tempo?

WITH tb_dia_cliente AS (
    SELECT  substr(Dtcriacao,1,10) AS dtDia,
            count(DISTINCT IdCliente) AS qtdeCliente

    FROM clientes

    GROUP BY dtDia
    ORDER BY dtDia
),

tb_acum AS (
    SELECT  *,
            sum(qtdeCliente) OVER (ORDER BY dtDia)  AS qtdeIdClienteAcum

    FROM tb_dia_cliente
)

SELECT *
FROM tb_acum
ORDER BY dtDia