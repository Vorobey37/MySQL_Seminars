/*Задача 2. Получить информацию об оценках
Пети по физике по четвертям:
• текущая успеваемость
• оценка в следующей четверти
• оценка в предыдущей четверти
*/
select * from academic_record;

select name, subject, quartal, 
	grade as "Текущая успеваемость",
	lag(grade) over (order by quartal) as "Оценка в предыдущей четверти",
    lead(grade) over (order by quartal) as "Оценка в следующей четверти"
from academic_record
where name = "Петя" and subject = "Физика";
	
select name, subject, quartal, 
	grade as "Текущая успеваемость",
	lag(grade) over grd as "Оценка в предыдущей четверти",
    lead(grade) over grd as "Оценка в следующей четверти"
from academic_record
where name = "Петя" and subject = "Физика"
window grd as (order by quartal);	