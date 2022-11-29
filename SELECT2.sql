SELECT COUNT(artistgenres.artist_id) AS artists, genres.name AS genre
FROM artistgenres JOIN genres
ON artistgenres.genre_id=genres.id
GROUP BY genres.name;

SELECT COUNT(*)
FROM tracks JOIN albums
ON tracks.album_id=albums.id
WHERE YEAR=2019 OR YEAR=2020;

SELECT AVG(tracks.duration), albums.name
FROM tracks JOIN albums
ON tracks.album_id=albums.id
GROUP BY albums.name;

SELECT artists.name
FROM artists 
JOIN artistsalbums ON artists.id=artistsalbums.artist_id 
JOIN albums ON albums.id=artistsalbums.album_id
WHERE YEAR NOT IN (2020);

SELECT DISTINCT collections.name 
FROM collections
JOIN trackscollections ON trackscollections.collection_id=collections.id
JOIN tracks ON tracks.id=trackscollections.track_id
JOIN albums ON albums.id=tracks.album_id 
JOIN artistsalbums ON artistsalbums.album_id=albums.id 
JOIN artists ON artists.id=artistsalbums.artist_id
WHERE artists.name = 'Green Day';

SELECT albums.name FROM albums
JOIN artistsalbums ON artistsalbums.album_id=albums.id
JOIN artists ON artists.id=artistsalbums.artist_id
JOIN artistgenres ON artistgenres.artist_id=artists.id
JOIN genres ON genres.id=artistgenres.genre_id 
GROUP BY albums.name
HAVING COUNT(*) > 1;

SELECT tracks.name 
FROM tracks
LEFT JOIN trackscollections t ON t.track_id = tracks.id 
LEFT JOIN collections c ON c.id = t.collection_id 
WHERE collection_id IS NULL;

SELECT artists.name
FROM artists
JOIN artistsalbums ON artistsalbums.artist_id=artists.id 
JOIN albums ON albums.id=artistsalbums.album_id 
FULL JOIN tracks ON tracks.album_id=albums.id 
WHERE duration = (SELECT MIN(duration) FROM tracks);

SELECT albums.name, COUNT(tracks.album_id) h
FROM albums FULL JOIN tracks ON tracks.album_id = albums.id
GROUP BY albums.name
ORDER BY h LIMIT 1;

