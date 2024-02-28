SELECT a.name AS 'Artista', alb.title AS 'Álbum', s.title AS 'Música'
FROM artists a
JOIN albums alb ON a.id = alb.artist_id
JOIN songs s ON alb.id = s.album_id
WHERE a.name != 'The Beatles'
ORDER BY 
    a.name,
    alb.title,
    s.title;
