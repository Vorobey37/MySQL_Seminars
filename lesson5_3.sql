/*Задача 3. Для базы lesson_4 решите:
1. создайте представление, в котором будут выводится все
сообщения, в которых принимал участие пользователь с
id = 1;
2. найдите друзей у друзей пользователя с id = 1 и
поместите выборку в представление;
(решение задачи с помощью with)
3. найдите друзей у друзей пользователя с id = 1.
(решение задачи с помощью представления “друзья”)
*/
use semimar_4;

select * from messages;
select * from friend_requests;

drop view if exists msg;

create view msg as
select *
from messages
where from_user_id = 1 or to_user_id = 1;

select * from msg;

CREATE OR REPLACE VIEW msg_veiw AS
SELECT initiator_user_id AS friend
FROM friend_requests
WHERE
target_user_id = 1 AND
status = 'approved'
union
SELECT target_user_id
FROM friend_requests
WHERE
initiator_user_id = 1 AND
status = 'approved';

SELECT * FROM msg_veiw;
SELECT fr.target_user_id FROM friend_requests as fr
JOIN msg_veiw on msg_veiw.friend = fr.initiator_user_id
WHERE target_user_id != 1 AND fr.status = 'approved'
UNION
SELECT fr.initiator_user_id FROM friend_requests as fr
JOIN msg_veiw on msg_veiw.friend = fr.target_user_id
WHERE initiator_user_id != 1 AND fr.status = 'approved';
 
 /*Другой способ*/
 WITH msg_cte AS
(SELECT IF(initiator_user_id = @fr, target_user_id, initiator_user_id) AS friend
FROM friend_requests
WHERE
(initiator_user_id = (@fr := 1) OR
target_user_id = @fr) AND
status = 'approved')
SELECT IF(initiator_user_id in (select friend from msg_cte), target_user_id, initiator_user_id) as friend_of_friends
FROM friend_requests
WHERE (initiator_user_id IN (select friend from msg_cte) OR
target_user_id IN (select friend from msg_cte)) AND
status = 'approved' AND
(initiator_user_id != @fr AND
target_user_id != @fr);

