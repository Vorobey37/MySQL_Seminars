/*Задача 2: выбрать фотографии
(filename) пользователя с email:
arlo50@example.org.
ID типа медиа, соответствующий
фотографиям неизвестен
(используя вложенные запросы)*/

select * from media;
select * from media_types;
select * from users;

select filename /*, u.email, mt.name_type*/
from media
where media_type_id = (select id from media_types where name_type = "Photo")
and user_id = (select id from users where email = "arlo50@example.org");

