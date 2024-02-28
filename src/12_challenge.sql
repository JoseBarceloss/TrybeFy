SELECT art.name AS Artista, COUNT(alb.id) AS "Quantidade de álbuns"
FROM artists AS art
LEFT JOIN albums AS alb ON art.id = alb.artist_id
GROUP BY art.id
ORDER BY COUNT(alb.id) DESC, art.name ASC;
