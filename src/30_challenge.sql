SELECT a.name AS "Artista", COUNT(af.user_id) AS "Total de seguidores"
FROM artists a
LEFT JOIN artists_followers af ON a.id = af.artist_id
GROUP BY a.id
HAVING COUNT(af.user_id) < 5;
