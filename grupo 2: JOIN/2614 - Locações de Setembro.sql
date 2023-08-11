SELECT customers.name, rentals.rentals_date
FROM customers
INNER JOIN rentals ON rentals.id_customers = customers.id
WHERE rentals.rentals_date >= DATE '2016-09-01' 
AND rentals.rentals_date < DATE '2016-10-01'

/* A vídeo locadora está fazendo seu relatório semestral e precisa da sua ajuda. 
Basta você selecionar o nome dos clientes e a data de locação, das locações realizadas no mês de setembro de 2016.*/