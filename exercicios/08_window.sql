--Saldo de pontos acumulado de cada usuário

WITH tb_cliente_dia AS (

    SELECT IdCliente,
            substr(DtCriacao,1,10) AS DtDia,
            sum(qtdePontos) AS TotalPontos,
            sum(CASE WHEN qtdePontos > 0 THEN qtdePontos ELSE 0 END) AS PontosPos
    FROM transacoes

    GROUP BY IdCliente, DtDia

) 

SELECT  *,
        sum(TotalPontos) OVER (PARTITION BY IdCliente ORDER BY dtDia) AS saldoPontos,
        sum(PontosPos)  OVER (PARTITION BY IdCliente ORDER BY dtDia) AS TotalPontosPos
        
FROM tb_cliente_dia