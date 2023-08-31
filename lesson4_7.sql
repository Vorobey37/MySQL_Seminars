/*Задача 6: Список медиафайлов
пользователей, указав название
типа медиа (id, filename, name_type)
(используя JOIN)*/
use semimar_4;
select * from media;
select * from media_types;

select m.id, m.filename, mt.name_type
from media as m
join media_types as mt
on m.media_type_id = mt.id;
