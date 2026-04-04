SELECT 
		sum(qtdepontos),
        sum(CASE
        		WHEn Qtdepontos > 0 then QtdePontos
        	END) AS QtdepontosPositivos,
        
        sum(CASE 
            	WHEn QtdePontos < 0 THEN qtdepontos
        	END) AS QtdePontosNegativos,
            
        COUNT(CASE 
            	WHEn QtdePontos < 0 THEN qtdepontos
        	END) AS QtdeTransacoesNegativas
     
from transacoes

WHERE dtcriacao >= '2025-07-01'
and Dtcriacao < '2025-08-01'

ORDER BY qtdepontos