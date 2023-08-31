/*1. Выведите id сотрудников, которые напечатали более 500 страниц за все дни*/
select staff_id 
from activity_staff
group by staff_id
having sum(count_page) > 500;

/*2. Выведите дни, когда работало более 3 сотрудников.
Также укажите количество сотрудников, которые работали в выбранные дни*/
select date_activity, count(id) as "Количество сотрудников" 
from activity_staff
group by date_activity
having count(id) >= 3;


/*3. Выведите среднюю зарплату по должностям, которая составляет более 30000*/
select avg(sallary) as "Средняя зарплата", post
from staff
group by post
having avg(sallary) > 30000;

