USE codeup_test_db;
ms with a genre of "Hard rock" or "Progressive rock"?

-- Name of all albums by Pink Floyd
SELECT name AS 'Pink Floyd Albums' From albums
WHERE artist = 'Pink Floyd';

--Year Sgt. Pepper's LHCB was release
SELECT release_date AS 'Realease Date of Sgt Pepper''s Lonely Hearts Club Band'
FROM albums WHERE name = 'Sgt. Peppers Lonely Hearts Club Band';

--Genre of Nevermind
SELECT genre AS 'Genre of Nirvana - Nevermind' FROM albums
WHERE name = 'Nevermind';

--Albums released in the 90s
SELECT artist, name AS 'Albums released in the 1990s' FROM albums
WHERE release_date between 1990 and 1999;

--Albums under 20 mil cert. sales
SELECT name AS 'Albums under 20 million certified sales' FROM albums
WHERE sales > 20.0;

--Rock Albums
SELECT name AS 'Rock albums' FROM albums WHERE genre = 'Rock';

