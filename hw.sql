-- 1. Создать таблицу teacher с полями teacher_id serial, 
-- first_name varchar, last_name varchar, birthday date, phone varchar, title varchar
-- 2. Добавить в таблицу после создания колонку middle_name varchar
-- 3. Удалить колонку middle_name
-- 4. Переименовать колонку birthday в birth_date
-- 5. Изменить тип данных колонки phone на varchar(32)
-- 6. Создать таблицу exam с полями exam_id serial, exam_name varchar(256), exam_date date
-- 7. Вставить три любых записи с автогенерацией идентификатора
-- 8. Посредством полной выборки убедиться, что данные были вставлены нормально и идентификаторы были сгенерированы с инкрементом
-- 9. Удалить все данные из таблицы со сбросом идентификатор в исходное состояние

create table teacher (
	teacher_id serial primary key,
	first_name varchar(50),
	last_name varchar(50),
	bdate date,
	phone varchar(15),
	title varchar(255)
);

alter table teacher
add column middle_name varchar,
add column has_car bool;

alter table teacher
drop column middle_name;

alter table teacher
rename bdate to bd;

alter table teacher
alter column phone set data type varchar(32);

create table exam (
	exam_id serial primary key,
	exam_name varchar(33),
	exam_date date
);

insert into exam (exam_name, exam_date) values
('Math', '2020-01-01'),
('Art', '2021-08-08'),
('Histury', '1945.05.05');

select * from exam;

truncate table exam;
