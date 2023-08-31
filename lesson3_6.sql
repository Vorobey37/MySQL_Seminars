use lesson3;

create table activity_staff (
id int primary key auto_increment,
staff_id int,
date_activity date,
count_page int,
foreign key (staff_id) references staff(id));

insert into activity_staff (staff_id, date_activity, count_page)
values (1, 20220101, 250),
(2, 20220101, 220),
(3, 20220101, 170),
(1, 20220102, 100),
(2, 20220102, 220),
(3, 20220102, 300),
(7, 20220102, 350),
(1, 20220103, 168),
(2, 20220103, 62),
(3, 20220103, 84);

select * from activity_staff;
