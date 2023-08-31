/*1.Выведите все записи, отсортированные по полю age по возрастанию*/
select * from staff
order by age;

/*2.Выведите все записи, отсортированные по полю firstname*/
select * from staff
order by firstname;

/*3.Выведите записи полей firstname, lastname, age, отсортированные по полю firstname в алфавитном порядке по убыванию*/
select firstname, lastname, age from staff
order by firstname desc;

/*4.Выполните сортировку по полям firstname и age по убыванию*/
select firstname, age from staff
order by firstname desc, age desc;