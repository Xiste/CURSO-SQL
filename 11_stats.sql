SELECT round(avg(qtdepontos),2) as mediaCarteira,
		1. * sum(qtdepontos) / count(idcliente) As mediaCarteiraRoots,
        min(qtdepontos) AS minCarteira,
        max(qtdepontos) As maxCarteira,
        sum(fltwitch),
        sum(flemail)

FROM clientes

