SELECT genre_id, COUNT(*) FROM genreartist_lists gl 
GROUP BY genre_id
ORDER BY COUNT(*);

SELECT COUNT(*) FROM tracks t
JOIN albums a ON a.album_id = t.album_id
WHERE a.album_year BETWEEN '2019-01-01' AND '2020-01-01';

SELECT a.album_id, avg(duration) FROM tracks t
JOIN albums a ON a.album_id = t.album_id
GROUP BY a.album_id
ORDER BY a.album_id;

SELECT DISTINCT al2.name  FROM artist_listsalbums al 
JOIN albums a  ON a.album_id  = al.album_id
JOIN artist_lists al2 ON al.artist_list_id = al2.artist_list_id
WHERE a.album_year != '2020-01-01'
ORDER BY al2.name;

SELECT c.name FROM collections c 
JOIN collectionstracks c2 ON c.collection_id = c2.collection_id
JOIN tracks t ON c2.track_id  = t.track_id 
JOIN albums a ON t.album_id  = a.album_id 
JOIN artist_listsalbums al ON a.album_id  = al.album_id 
JOIN artist_lists al2 ON al.artist_list_id = al2.artist_list_id 
WHERE al2.name LIKE '%Filatov & Karas%'

SELECT a.name FROM albums a
JOIN artist_listsalbums al ON a.album_id  = al.album_id 
JOIN artist_lists al2 ON al.artist_list_id  = al2.artist_list_id 
JOIN genreartist_lists gl ON al2.artist_list_id = gl.artist_list_id 
JOIN the_genre tg ON gl.genre_id = tg.genre_id
GROUP BY a.name
HAVING COUNT(*) > 1;

SELECT t. name FROM tracks t 
LEFT JOIN collectionstracks c ON t.track_id = c.track_id 
WHERE c.track_id IS NULL;

SELECT al.name FROM artist_lists al
JOIN artist_listsalbums al2 ON al.artist_list_id = al2.artist_list_id 
JOIN albums a ON al2.album_id = a.album_id 
JOIN tracks t ON a.album_id = t.album_id
WHERE t.duration = (SELECT min(duration) FROM tracks t2);

SELECT a.name FROM albums a 
JOIN tracks t ON a.album_id  = t.album_id 
GROUP BY a.album_id
HAVING COUNT(*) = 1
ORDER BY a.name;