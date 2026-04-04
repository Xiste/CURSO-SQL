--SELECT *
--FROM clientes
--ORDER BY qtdepontos DESC 
--LIMIT 10

SELECT *
FROM clientes
WHERE  fltwitch = 1
ORDER BY dtcriacao ASC, qtdepontos DESC
