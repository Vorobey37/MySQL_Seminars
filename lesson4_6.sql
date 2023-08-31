/*Задача 5: Список медиафайлов
пользователей с количеством
лайков (используя JOIN)*/

select * from media;
select * from friend_requests;
select * from media_types;
select * from likes;
select * from users;
select * from users_communities;
select * from messages;

select u. firstname, u.lastname, m.filename, count(*)
from media as m
join likes as l
on m.id = l.media_id
join users as u
on m.user_id = u.id
group by l.media_id;
