insert into musicalgenre (name)
values 
('Rock'),
('Classical music'),
('Pop'),
('Electronic'),
('Dubstep'),
('Alternative')
;

insert into performer (name) --8
values 
('Imagine dragons'),
('Lindsey Stirling'),
('Pentatonix'),
('The Score'),
('twenty one pilots'),
('The Chainsmokers'),
('Fall Out Boy'),
('Coldplay')
;

insert into album (name, albumrelease)
values 
('Mercury - Acts 1 & 2', '2022-06-30'),
('Artemis', '2019-09-5'),
('Deluxe Version', '2015-10-15'),
('Pressure', '2019-12-31'),
('Trench', '2018-10-04'),
('Memories...Do Not Open', '2017-04-07'),
('MANIA', '2018-01-18'),
('Everyday Life', '2019-11-21')
;

insert into track (name,durationinseconds,albumid)
values 
('Enemy',173,1),
('My Life',188,1),
('Lonely',298,1),
('Wrecked',215,1),
('Bones',165,1),
('Underground',262,2),
('Artemis',234,2),
('Til the Light Goes Out',284,2),
('Between Twilight',259,2),
('Sleepwalking',227,2),
('Na Na Na',157,3),
('Cant Sleep Love',212,3),
('Sing',177,3),
('Take Me Home',176,3),
('Rose Gold',225,3),
('Stronger',190,4),
('Under The Pressure',207,4),
('Born for This', 233,4),
('Fear',183,4),
('My Blood',215,5),
('Chlorine',189,5),
('Jumpsuit',237,5), --22
('Paris',221,6),
('Something Just Like This',248,6),
('Young and Menace', 223,7),
('The Last of the Real Ones',230,7),
('Orphans',199,8)
;

insert into collection (name, collectionrelease)
values 
('Best 2022','2022-12-31'),
('Best 2021','2021-12-31'),
('Best 2020','2020-12-31'),
('Best 2019','2019-12-31'),
('Best 2018','2018-12-31'),
('Best 2017','2017-12-31'),
('Best 2016','2016-12-31'),
('Best 2015','2015-12-31')
;


insert into genreperformer (genre_id, perf_id)
values 
(1,1),
(6,1),
(2,2),
(3,2),
(4,2),
(5,2),
(3,3),
(1,4),
(6,4),
(1,5),
(3,5),
(6,5),
(4,6),
(1,7),
(3,7),
(1,8),
(3,8),
(6,8)
;
insert into performeralbum (perf_id, album_id)
values 
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8)
;

insert into trackcollection (track_id, coll_id)
values 
(1,1),
(4,1),
(5,1),
(6,4),
(7,4),
(10,4),
(11,8),
(12,8),
(14,8),
(15,4),
(18,4),
(19,4),
(20,5),
(21,5),
(22,5),
(24,6),
(25,5)
;