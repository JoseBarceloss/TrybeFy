SELECT art.name AS 'Artista', COUNT(s.id) AS 'Quantidade de músicas'
FROM artists art
JOIN albums alb ON art.id = alb.artist_id
JOIN songs s ON alb.id = s.album_id
GROUP BY art.name
ORDER BY COUNT(s.id) DESC, art.name ASC
LIMIT 3;
