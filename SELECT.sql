
-- 1    название и год выхода альбомов, вышедших в 2018 году;
-- 2    название и продолжительность самого длительного трека;
-- 3    название треков, продолжительность которых не менее 3,5 минуты;
-- 4    названия сборников, вышедших в период с 2018 по 2020 год включительно;
-- 5    исполнители, чье имя состоит из 1 слова;
-- 6    название треков, которые содержат слово "мой"/"my".

SELECT album_name, album_year FROM Albums
	WHERE album_year = 2018;

SELECT track_name, track_len FROM Tracks
	ORDER BY track_len DESC
	LIMIT 1;

SELECT track_name FROM Tracks
	WHERE track_len >= 210;

SELECT mix_name FROM Mix
	WHERE mix_year BETWEEN 2018 AND 2020;

SELECT name FROM Artist
	WHERE name NOT LIKE '%% %%';

SELECT track_name FROM Tracks
	WHERE track_name ILIKE '%%my%%'
	OR track_name ILIKE '%%мой%%';
