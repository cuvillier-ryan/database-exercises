USE codeup_test_db;
--write queries to find the following information. Before each item,
--output a caption explaining the results:
--The name of all albums by Pink Floyd.
--The year Sgt. Pepper's Lonely Hearts Club Band was released
--The genre for Nevermind
--Which albums were released in the 1990s
--Which albums had less than 20 million certified sales
--All the albums with a genre of "Rock". Why do these query results
--not include albums with a genre of "Hard rock" or "Progressive rock"?

SELECT name AS 'Pink Floyd Albums' From albums
WHERE artist = 'Pink Floyd';

SELECT release_date AS 'Realease Date of Sgt Pepper''s Lonely Hearts Club Band'
FROM albums WHERE name = 'Sgt. Peppers Lonely Hearts Club Band';

SELECT genre AS 'Genre of Nirvana - Nevermind' FROM albums
WHERE name = 'Nevermind';

SELECT artist, name AS 'Albums released in the 1990s' FROM albums
WHERE release_date between 1990 and 1999;

SELECT name AS 'Albums under 20 million certified sales' FROM albums
WHERE sales > 20.0;

SELECT name AS 'Rock albums' FROM albums WHERE genre = 'Rock';

