SELECT life_registry.name, ROUND((life_registry.omega * 1.618), 3) AS "Fator N"
FROM life_registry
INNER JOIN dimensions ON life_registry.dimensions_id = dimensions.id
WHERE dimensions.name IN ('C875', 'C774')
AND life_registry.name LIKE 'Richard%'
ORDER BY life_registry.omega ASC

/* Richard é um cientista muito famoso por suas teorias do multiverso, onde ele descreve que todo o conjunto hipotético de universos paralelos podem ser representados por meio de tabelas em um banco de dados. E graças a essa teoria você tem um emprego.

A sua primeira tarefa é selecionar todos os possíveis Richards das dimensões C875 e C774, junto a sua probabilidade de existência (o fator N) com a precisão de 3 casas decimais.

Lembre-se que (o fator N) é calculado multiplicando o valor omega por 1,618. Os dados devem ser ordenados pelo menor valor do campo omega.*/