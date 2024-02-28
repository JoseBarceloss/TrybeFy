SELECT title AS 'Título'
FROM songs
WHERE album_id = (
    SELECT id
    FROM albums
    WHERE title = 'Thriller'
)
ORDER BY title;
