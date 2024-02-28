SELECT a.name AS "Artista"
FROM artists a
LEFT JOIN (
    SELECT artist_id, COUNT(*) AS followers_count
    FROM artists_followers
    GROUP BY artist_id
) af ON a.id = af.artist_id
ORDER BY af.followers_count DESC
LIMIT 1;
