/*Задача
3: выбрать id друзей
пользователя с id = 1
(используя UNION)*/

select target_user_id as "Друзья" from friend_requests
where initiator_user_id = 1 and status = "approved"
union
select initiator_user_id from friend_requests
where target_user_id = 1 and status = "approved";