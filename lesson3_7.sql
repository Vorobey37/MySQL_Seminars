/*1. Выведите общее количество страниц, напечатанных каждым сотрудником*/
select staff_id as "Сотрудник", sum(count_page) as "Общее количество страниц" 
from activity_staff
group by staff_id;

/*2. Посчитайте количество страниц за каждый день*/
select date_activity as "Текущий день", sum(count_page) as "Общее количество страниц"
from activity_staff
group by date_activity;

/*3. Найдите среднее арифметическое по количеству ежедневных страниц*/
select date_activity as "Текущий день", avg(count_page) as "Среднее количество страниц" 
from activity_staff
group by date_activity;