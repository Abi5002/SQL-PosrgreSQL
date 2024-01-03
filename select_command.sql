-- 1
select product_id, product_name, unit_price 
from Products 
where unit_price > 100;

-- 2
select contact_name, country 
from Customers 
where country = 'Spain';

-- 3
select contact_name, city from Customers where city like 'W%'; 

select * from customers;

-- 4
select contact_name, phone 
from customers
where phone like '%5555%';

-- 5
select *
from customers
where country = 'USA' and contact_title = 'Marketing Assistant';

-- 6
select product_name, units_in_stock*unit_price AS total_cost
from products 
where unit_price > 100 or product_name = 'Chai' 
