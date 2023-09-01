
CREATE TABLE IF NOT EXISTS MusicalGenre (
id SERIAL PRIMARY KEY NOT NULL,
name VARCHAR(50) NOT NULL UNIQUE
);
CREATE TABLE IF NOT EXISTS Performer (
id SERIAL PRIMARY KEY NOT NULL,
name VARCHAR(50) NOT NULL UNIQUE
);
CREATE TABLE IF NOT EXISTS Album (
id SERIAL PRIMARY KEY NOT NULL,
name VARCHAR(50) NOT NULL,
albumRelease date NOT NULL
);
CREATE TABLE IF NOT EXISTS Track (
id SERIAL PRIMARY KEY NOT NULL,
name VARCHAR(50) NOT NULL,
durationInSeconds integer NOT NULL,
albumName VARCHAR(50) NOT NULL REFERENCES Album(name)
);
CREATE TABLE IF NOT EXISTS Collection (
id SERIAL PRIMARY KEY NOT NULL,
name VARCHAR(50) NOT NULL,
collectionRelease DATE NOT NULL 
);
CREATE TABLE IF NOT EXISTS GenrePerformer (
genre_id integer references MusicalGenre(id),
perf_id integer references Performer(id),
constraint pk primary key (genre_id, perf_id)
);
CREATE TABLE IF NOT EXISTS PerformerAlbum (
perf_id integer references Performer(id),
album_id integer references Album(id),
constraint pk primary key (album_id, perf_id)
);
CREATE TABLE IF NOT EXISTS TrackCollection (
track_id integer references Track(id),
coll_id integer references Collection(id),
constraint pk primary key (track_id, coll_id)
);
