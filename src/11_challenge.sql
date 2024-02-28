SELECT alb.title AS Album, alb.release_year AS "Ano de lançamento", art.name AS Artista
FROM albums AS alb
JOIN artists AS art ON alb.artist_id = art.id
WHERE alb.title LIKE '%you%'
ORDER BY alb.release_year ASC;
