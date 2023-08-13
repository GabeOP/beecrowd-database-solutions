SELECT amount AS most_frequent_value
FROM value_table
GROUP BY amount
ORDER BY COUNT(amount) DESC
LIMIT 1;

/* Dada uma single-column table de valores inteiros, qual é o valor atributo mais frequente, ou seja, a moda estatística desses valores?*/