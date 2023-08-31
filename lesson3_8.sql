
/*Сгруппируйте данные о сотрудниках по возрасту:
			1 группа - младше 20 лет
			2 группа - от 20 до 40 лет
            3 группа - старше 40 лет
Для каждой группы найдите суммарную зарплату.*/

select
case
	when age < 20
		then "1 группа"
	when age >= 20 and age < 40
		then "2 группа"
	when age >= 40
		then "3 группа"
end as age_group,
sum(sallary)
from staff
group by age_group;