--Lista de pedidos realizados no fim de semana;

SELECT IdTransacao,
        IdCliente,
        DtCriacao,
        strftime('%w', datetime(substr(DtCriacao,1,10))) AS DiaSemana

FROM transacoes

WHERE DiaSemana IN ('6','0')