SELECT customers.name, orders.id
FROM customers
INNER JOIN orders ON orders.id_customers = customers.id
WHERE orders.orders_date < DATE '2016-07-01'

/* A auditoria financeira da empresa está pedindo para nós um relatório do primeiro semestre de 2016. Então exiba o nome dos clientes e o número do pedido para os clientes que fizeram pedidos no primeiro semestre de 2016. */