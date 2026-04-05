DELETE FROM relatorio_diario;

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

INSERT INTO relatorio_diario

SELECT *
FROM tb_acum;

SELECT * FROM relatorio_diario; 