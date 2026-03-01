create database if not exists Amazon_sales;
use amazon_sales;
-- creating sales table --
create table if not exists sales(
order_id int primary key not null,
order_date date not null,
product_id int not null,
product_category varchar(20) not null,
price decimal(10,2) not null,
discount_percent int not null,
quantity_sold int not null,
customer_region varchar(20) not null,
payment_method varchar(20) not null,
rating float not null,
review_count int not null,
discounted_price decimal(10,2) not null,
total_revenue decimal(10,2) not null);
 
 select * from sales;
 
 -- deleting duplictes --
 
 select * from(
 select*,
 row_number() over(
 partition by
 order_date, product_id, product_category, price, discount_percent, quantity_sold, 
 customer_region, payment_method, rating, review_count, discounted_price, total_revenue
 )as rn
 from sales) t
 where rn>1;
 
 delete from sales 
 where order_id in (
 select order_id from(
 select*,
 row_number() over(
 partition by
 order_date, product_id, product_category, price, discount_percent, quantity_sold, 
 customer_region, payment_method, rating, review_count, discounted_price, total_revenue
 )as rn
 from sales) t
 where rn>1
 );
 
SELECT 
    *
FROM
    sales;
 
 -- creating dimentional tables--
 
 -- order table --
  
create table if not exists orders(
	order_id int primary key not null,
	order_date date not null,
	product_id int not null,
    quantity_sold int not null,
    customer_region varchar(20) not null);

insert into orders
select 
distinct 
	order_id,
	order_date,
	product_id,
	quantity_sold,
	customer_region
from sales;

select * from orders;

-- product table --

create table if not exists products(
product_id int not null,
product_category varchar(20) not null,
price decimal(10,2) not null,
rating float not null,
review_count int not null);

insert ignore into products
select distinct
	product_id,
    product_category,
    price,
     rating,
	review_count
from sales;
    
select * from products

 