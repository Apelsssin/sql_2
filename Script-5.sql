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