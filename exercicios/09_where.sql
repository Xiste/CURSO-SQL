-- Listar todas as transações adicionando uma coluna nova sinalizando “alto”, “médio” e “baixo” para o valor dos pontos [<10 ; <500; >=500]


SELECT 	idcliente,
		idtransacao,
        qtdepontos,
        CASE
			WHEN qtdepontos < 10 THEN 'baixo' 
            WHEn qtdepontos < 500 THEN 'medio'
            ELSE 'alto'
        END AS Valor
FROM transacoes


ORDER BY Valor Desc