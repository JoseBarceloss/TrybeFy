SELECT name AS Artista
FROM artists
WHERE id IN (
    SELECT artist_id
    FROM albums
    GROUP BY artist_id
    HAVING COUNT(id) >= 3
)
ORDER BY name ASC;
