CREATE table if not exists genre (
	id serial primary key, 
	genre_name varchar(100) not null 
);

create table if not exists artist (
	id serial primary key, 
	artist_name varchar(100) not null,
	genre_id integer references genre(id)
);

create table if not exists album (
	id serial primary key, 
	album_name varchar(100) not null,
	release_date date not null,
	artist_id integer references artist(id)
);

create table if not exists track (
	id serial primary key,
	track_name varchar(100) not null,
	track_duration time not null,
	album_id integer references album(id)
);
