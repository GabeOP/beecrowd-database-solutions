SELECT movies.id, movies.name
FROM movies
INNER JOIN genres ON movies.id_genres = genres.id
WHERE genres.description = 'Action'

/*Uma Vídeo locadora contratou seus serviços para catalogar os filmes dela.
Eles precisam que você selecione o código e o nome dos filmes cuja descrição do gênero seja 'Action'.*/