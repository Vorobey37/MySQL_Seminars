/*Задача
3: выбрать id друзей
пользователя с id = 1
(используя UNION)*/

select * from friend_requests
where initiator_user_id = 1
union
select * from friend_requests
where target_user_id = 1;