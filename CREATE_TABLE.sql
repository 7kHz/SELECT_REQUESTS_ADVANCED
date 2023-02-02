CREATE TABLE IF NOT EXISTS the_genre (
	genre_id serial PRIMARY KEY,
	name varchar(30) UNIQUE 
);

CREATE TABLE IF NOT EXISTS artist_lists(
	artist_list_id serial PRIMARY KEY,
	name varchar(30) UNIQUE
);

CREATE TABLE IF NOT EXISTS genreartist_lists(
	genre_id integer REFERENCES the_genre(genre_id),
	artist_list_id integer REFERENCES artist_lists(artist_list_id),
	CONSTRAINT pk PRIMARY KEY(genre_id, artist_list_id)
);

CREATE TABLE IF NOT EXISTS albums(
	album_id serial PRIMARY KEY,
	name varchar(30) UNIQUE,
	album_year date 
);

CREATE TABLE IF NOT EXISTS artist_listsalbums(
	artist_list_id integer REFERENCES artist_lists(artist_list_id),
	album_id integer REFERENCES albums(album_id),
	CONSTRAINT pk_1 PRIMARY KEY(artist_list_id, album_id)
);

CREATE TABLE IF NOT EXISTS tracks(
	track_id serial PRIMARY KEY,
	name varchar(30) UNIQUE,
	duration integer CHECK (duration > 0),
	album_id integer REFERENCES albums(album_id)
);

CREATE TABLE IF NOT EXISTS collections(
	collection_id serial primary key,
	name varchar(30) UNIQUE,
	collection_year date
);

CREATE TABLE IF NOT EXISTS collectionstracks(
	track_id integer REFERENCES tracks(track_id),
	collection_id integer REFERENCES collections(collection_id),
	CONSTRAINT pk_2 PRIMARY KEY(track_id, collection_id)
);

