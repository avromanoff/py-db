-- Заполните базу данных из предыдущего домашнего задания. В ней должно быть:
--    не менее 8 исполнителей;
--    не менее 5 жанров;
--    не менее 8 альбомов;
--    не менее 15 треков;
--    не менее 8 сборников.
--    Внимание! Должны быть заполнены все поля каждой таблицы, в т.ч. таблицы связей (исполнителей с жанрами, исполнителей с альбомами, сборников с треками).

INSERT INTO Genre (name)
VALUES
	('Blues'),
	('Coutry'),
	('Electronic'),
	('Folk'),
	('Jazz');

INSERT INTO Artist (name)
VALUES
	('Napalm Death'),
	('Carcass'),
	('Slayer'),
	('In Flames'),
	('Dark Tranquillity'),
	('Nightwish'),
	('Pink Floyd'),
	('ZZ Top'),
	('Spin Doctors');

INSERT INTO GenreArtist (genre_id, artist_id)
VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(1, 6),
	(2, 7),
	(3, 8),
	(4, 9);

INSERT INTO Albums (album_name, album_year)
VALUES
	('Kerplunk!', 1991),
	('Dookie', 1994),
	('Insomniac', 1995),
	('Nimrod', 1997),
	('Warning', 2000),
	('American Idiot', 2004),
	('21st Century Breakdown', 2018),
	('Revolution Radio', 2019),
	('Father of All Motherfuckers', 2020);

INSERT INTO ArtistAlbum (artist_id, album_id)
VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 7),
	(8, 8),
	(9, 9);

INSERT INTO Tracks (album, track_name, track_len)
VALUES
	(1, 'Nuclear Family', 183),
	(2, 'Stay the Night', 276),
	(3, 'Carpe Diem', 205),
	(4, 'Let Yourself Go', 177),
	(5, 'Kill the DJ', 223),
	(6, 'Fell for You', 188),
	(7, 'Loss of Control', 187),
	(8, 'Troublemaker', 165),
	(9, 'Angel Blue', 166),
	(1, 'Sweet 16', 183),
	(2, 'Rusty James', 249),
	(3, 'Oh Love', 152),
	(4, 'See You Tonight', 66),
	(5, 'Fuck Time', 165),
	(6, 'Stop When the Red Lights Flash', 146),
	(7, 'Lazy Bones', 214),
	(8, 'Wild One', 259),
	(9, 'Makeout Party', 194),
	(1, 'Stray Heart', 224),
	(2, 'Ashley', 330),
	(3, 'Baby Eyes', 142),
	(4, 'My Lady Cobra', 125),
	(5, 'Wow! That’s Loud', 267),
	(6, 'Amy', 205),
	(7, 'Brutal Love', 294),
	(8, 'Missing You', 223),
	(9, '8th Avenue Serenade', 156),
	(1, 'Drama Queen', 187),
	(2, 'X-Kid', 221),
	(3, 'Sex, Drugs & Violence', 211),
	(4, 'A Little Boy Named Train', 217),
	(5, 'Amanda', 148),
	(6, 'Walk Away', 225),
	(7, 'Dirty Rotten Bastards', 386),
	(8, '99 Revolutions', 229),
	(9, 'The Forgotten', 298);

INSERT INTO Mix (mix_name, mix_year)
VALUES
	('Greatest Hits vol. 1', 2000),
	('Greatest Hits vol. 2', 2020),
	('Best Of Blues', 2020),
	('Singles Collection', 2020),
	('B-sides', 2020),
	('Santa Barbara Original Soundtrack', 2020),
	('Star Wars Original Soundtrack', 2020),
	('Hobbit Original Soundtrack', 2020);

INSERT INTO TrackMix (track_id, mix_id)
VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 2),
	(5, 2),
	(6, 2),
	(7, 3),
	(8, 3),
	(9, 3),
	(10, 4),
	(11, 4),
	(12, 4),
	(13, 5),
	(14, 5),
	(15, 5),
	(16, 6),
	(17, 6),
	(18, 6),
	(19, 7),
	(20, 7),
	(21, 7),
	(22, 8),
	(23, 8),
	(24, 8);

