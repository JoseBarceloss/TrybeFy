SELECT alb.title AS 'Álbum', SUM(s.duration_in_seconds) AS 'Duração'
FROM albums alb
JOIN songs s ON alb.id = s.album_id
GROUP BY alb.title
ORDER BY SUM(s.duration_in_seconds) DESC;
