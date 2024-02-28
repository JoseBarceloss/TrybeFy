SELECT title AS 'Título', duration_in_seconds AS 'Duração'
FROM songs
WHERE duration_in_seconds <= 240
ORDER BY duration_in_seconds;
