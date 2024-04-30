CREATE TABLE IF NOT EXISTS Genre (id SERIAL PRIMARY KEY, name varchar(60) NOT null);
CREATE TABLE IF NOT EXISTS Artist (id SERIAL PRIMARY KEY, name varchar(60) NOT null);
CREATE TABLE IF NOT EXISTS GenreArtist (genre_id integer REFERENCES Genre(id), artist_id integer REFERENCES Artist(id), CONSTRAINT pk PRIMARY KEY(genre_id, artist_id));
CREATE TABLE IF NOT EXISTS Album (id serial PRIMARY KEY, name varchar(60), release_year date);
CREATE TABLE IF NOT EXISTS ArtistAlbum (artist_id integer REFERENCES Artist(id), album_id integer REFERENCES Album(id), CONSTRAINT pk1 PRIMARY KEY(artist_id, album_id));
CREATE TABLE IF NOT EXISTS Track (id serial PRIMARY KEY, name varchar(60) NOT NULL, duration integer, album_id integer REFERENCES Album(id));
CREATE TABLE IF NOT EXISTS Collection (id serial PRIMARY KEY, name varchar(60) NOT NULL, releaseyear date);
CREATE TABLE IF NOT EXISTS TracklCollection (track_id integer REFERENCES Track(id), collection_id integer REFERENCES Collection(id), CONSTRAINT pk2 PRIMARY KEY(track_id, collection_id));
