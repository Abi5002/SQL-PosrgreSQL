-- Сортировка по одному полю
-- она в конце идет
select product_name, category_id, unit_price
from products 
order by unit_price desc;
-- desc


-- Sorting by some (at least one) columns
select product_name, category_id, unit_price
from products
order by category_id, unit_price;

-- desc
select product_name, category_id, unit_price
from products
order by category_id desc, unit_price desc;

select product_name, category_id, unit_price
from products
where unit_price < 10
order by category_id, unit_price;

 
-- tasks 

select * from orders;

select order_date, freight
from orders
where order_date = '1998-02-26' 
order by freight;

select employee_id, freight
from orders
where order_date = '1998-02-26' 
order by employee_id, freight 
LIMIT 10;