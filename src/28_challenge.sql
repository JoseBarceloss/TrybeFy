SELECT u.full_name AS "Pessoa usuária",
       COUNT(af.artist_id) AS "Artistas que segue"
FROM users u
LEFT JOIN artists_followers af ON u.id = af.user_id
GROUP BY u.full_name
ORDER BY u.full_name;
