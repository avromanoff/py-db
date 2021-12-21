create table if not exists Genre (
	id serial primary key,
	name varchar (100) not null unique
);

create table if not exists Artist (
	id serial primary key,
	name varchar (100) not null,
	genre_name integer references Genre(id)
);

create table if not exists GenreArtist (
	id serial primary key,
	genre_id integer not null references Genre(id),
	artist_id integer not null references Artist(id)
);

create table if not exists Albums (
	id serial primary key,
	artist_name integer references Artist(id),
	album_name varchar (100) not null,
	album_year integer not null check(album_year > 1800)
);

create table if not exists ArtistAlbum (
	id serial primary key,
	artist_id integer not null references Artist(id),
	album_id integer not null references Albums(id)
);

create table if not exists Tracks (
	id serial primary key,
	album integer references Albums(id),
	track_name varchar (1000) not null,
	track_len integer not null check(track_len > 0)
);

create table if not exists Mix (
	id serial primary key,
	mix_name varchar (100) not null,
	mix_year integer not null check(album_year > 1800)
);

create table if not exists TrackMix (
	id serial primary key,
	track_id integer not null references Tracks(id),
	mix_id integer not null references Mix(id)
);