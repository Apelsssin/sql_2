--название и год выхода альбомов, вышедших в 2018 году;
--название и продолжительность самого длительного трека;
--название треков, продолжительность которых не менее 3,5 минуты;
--названия сборников, вышедших в период с 2018 по 2020 год включительно;
--исполнители, чье имя состоит из 1 слова;
--название треков, которые содержат слово "мой"/"my".
select name,albumrelease 
from album 
where albumrelease between '2018-01-01 00:00:00' and '2018-12-31 23:59:59';

select name, durationinseconds
from track 
order by durationinseconds desc 
limit 1;

select name
from track 
where durationinseconds >=210;

select name
from collection 
where collectionrelease between '2018-01-01 00:00:00' and '2020-12-31 23:59:59';

select name
from performer 
where name not like '% %';

select name
from track 
where name like 'My %' or name like 'Мой %' or  name like '% my %' or name like '% мой %';

-------------------------

--Количество исполнителей в каждом жанре.
--Количество треков, вошедших в альбомы 2019–2020 годов.
--Средняя продолжительность треков по каждому альбому.
--Все исполнители, которые не выпустили альбомы в 2020 году.
--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).

select COUNT(genre_id) 
from genreperformer 
where genre_id = 1;

select COUNT(genre_id) 
from genreperformer 
where genre_id = 2;

select COUNT(genre_id) 
from genreperformer 
where genre_id = 3;

select COUNT(genre_id) 
from genreperformer 
where genre_id = 4;

select COUNT(genre_id) 
from genreperformer 
where genre_id = 5;

select COUNT(genre_id) 
from genreperformer 
where genre_id = 6;

select COUNT(albumid) countt from track t
left join album a on t.albumid = a.id 
where a.albumrelease between '2019-01-01 00:00:00' and '2020-12-31 23:59:59'
;

select AVG(durationinseconds) av, a."name"  from track t
left join album a on t.albumid = a.id 
group by a."name" 
order by av DESC;

select p.name from performer p 
join performeralbum p2 on p.id = p2.perf_id 
join album a on a.id = p2.album_id 
where a.albumrelease not between '2020-01-01 00:00:00' and '2020-12-31 23:59:59';

select distinct c.name from collection c 
join trackcollection t on c.id = t.coll_id 
join track t2 on t2.id = t.track_id 
join album a on t2.albumid = a.id 
join performeralbum p on a.id = p.album_id  
join performer p2 on p2.id = p.perf_id 
where p2."name" = 'The Score';

