/*Задача 4: выбрать всех
пользователей, указав их id, имя и
фамилию, город и аватарку
(используя JOIN)*/

select * from users;
select * from profiles;

select id, firstname, lastname, hometown, photo_id
from users
join profiles
on users.id = profiles.user_id;
