/*Задача 1. Получить с помощью оконных функции:
• средний балл ученика
• наименьшую оценку ученика
• наибольшую оценку ученика
• сумму всех оценок
• количество всех оценок
*/

select distinct name, 
	avg(grade) over (partition by name) as "Средний балл",
    min(grade) over (partition by name) as "Наименьшая оценка",
    max(grade) over (partition by name) as "Наибольшая оценка",
    sum(grade) over (partition by name) as "Сумма всех оценок",
    count(grade) over (partition by name) as "Количество всех оценок"
from academic_record;

