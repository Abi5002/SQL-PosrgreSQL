/*
select contact_name, city, case when region is null then 'not defined' else region end
from customers;

select contact_name, case when country != 'USA' then 'not USA' else country end 
from Customers;

select country, count(contact_name)
from (select contact_name, case when country != 'USA' then 'not USA' else country end 
from Customers) as table1
group by country;
*/
 
select EXTRACT(MONTH FROM order_date) AS month, round(sum(quantity*(unit_price*(1-discount))))
from orders as t1 join order_details as t2 on t1.order_id = t2.order_id
where order_date between '1996-01-01' and '1996-12-31'
group by EXTRACT(MONTH FROM order_date)
order by month;

select order_id, abs(extract(day from shipped_date)-extract(day from order_date)) as lasted 
from orders;

select concat(abs(extract(day from shipped_date)-extract(day from order_date)), ' ', 'days') as lasted, count(*) as amount_of_orders
from orders
where shipped_date is not null
group by abs(extract(day from shipped_date)-extract(day from order_date))
order by abs(extract(day from shipped_date)-extract(day from order_date));

select country
from customers
where length(country) > 10;
