-- Selecione produtos que contêm ‘churn’ no nome

SELECT *

FROM produtos

-- Churn_10pp
-- Churn_10pp
-- Churn_10pp

-- WHERE DescNomeProduto = 'Churn_10pp'
-- OR DescNomeProduto = 'Churn_10pp'
-- OR DescNomeProduto = 'Churn_10pp'

WHERE DescNomeProduto IN ('Churn_10pp','Churn_10pp','Churn_10pp')

-- WHERE DescNomeProduto LIKE 'Churn%'

WHERE DescCategoriaProduto = 'churn_model'
