SELECT a.name AS Artista, GROUP_CONCAT(b.title) AS Álbuns
FROM artists a
JOIN albums b ON a.id = b.artist_id
GROUP BY a.name
ORDER BY a.name ASC, Álbuns ASC;
