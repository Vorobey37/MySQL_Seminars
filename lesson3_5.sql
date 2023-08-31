/*1. Найдите количество сотрудников с должностью рабочий*/
select count(*) as "Количество рабочих" from staff
where post = "Рабочий";

/*2. Посчитайте ежемесячную заработную плату начальников*/
select sum(sallary) as "Зарплата начальников" from staff
where post = "Начальник";

/*3. Выведите средний возраст сотрудников, у которых заработная плата больше 30000*/
select avg(age) as "Средний возраст" from staff
where sallary > 30000;

/*4. Выведите максимальную и минимальную заработные платы*/
select max(sallary) as "Максимальная з/п", min(sallary) as "Минимальная з/п"
from staff;