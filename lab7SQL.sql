-- 1
select major_name as "Название специальности" from majors;
-- 2
select sch_time as "Время собрания", day_of_week as "День недели", concat(fname, ' ', lname) as "Преодователь" 
from schedule as t1 join teachers as t2 on t1.teach_id = t2.teach_id;
-- 3
select concat(fname , ' ' , lname) as "full_name" from students;
-- 4
select distinct lect_hours from credits;
-- 5
select group_name, headstud_id from groups;
-- 6
select *
from credits 
where pract_hours > 80;
-- 7
select *
from credits 
where pract_hours between 30 and 60;
-- 8
select * from teachers
where fname like '%g%';
-- 9
select * from students
where fname like '%n_';
-- 10
SELECT rk1::varchar(255), rk2::float
FROM progress;

