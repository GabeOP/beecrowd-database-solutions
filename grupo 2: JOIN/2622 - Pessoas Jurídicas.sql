SELECT customers.name
FROM customers
INNER JOIN legal_person ON legal_person.id_customers = customers.id

/* O setor de vendas quer fazer uma promoção para todos os clientes que são pessoas jurídicas. Para isso você deve exibir o nome dos clientes que sejam pessoa jurídica.*/