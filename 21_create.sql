--Quantidade de transações Acumuladas ao longo do tempo?

DROP  TABLE IF EXISTS relatorio_diario;

CREATE TABLE IF NOT EXISTS relatorio_diario AS 

WITH tb_diario AS (
    SELECT  substr(Dtcriacao,1,10) AS dtDia,
            count(DISTINCT idTransacao) AS qtdeTransacao

    FROM transacoes

    GROUP BY dtDia
    ORDER BY dtDia
),

tb_acum AS (
    SELECT  *,
            sum(qtdeTransacao) OVER (ORDER BY dtDia)  AS qtdeTransacaoAcum

    FROM tb_diario
)

SELECT *
FROM tb_acum
;

SELECT * FROM relatorio_diario;