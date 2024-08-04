select * from customer

select* from sales
 select * from product
---inner join on customer and sales
	
select c.customer_id,c.customer_name,c.city,s.ship_mode from sales as s
inner join customer as c
on s.customer_id =c.customer_id
	
--inner join on sales and product
	
select p.product_id,p.category,p.product_name,s.ship_mode from sales as s
inner join product as p
on s.product_id =p.product_id

--left join on customer and sales
select c.customer_name,c.city,c.state,s.order_date,s.ship_date,s.ship_mode from sales as s
left join customer as c
on c.customer_id =s.customer_id

--right join on customer and sales
select c.customer_name,c.city,c.state,s.order_date,s.ship_date,s.ship_mode from customer as c
right join sales as s
on c.customer_id =s.customer_id

---left join on sales and product
select s.order_line,s.order_id,s.quantity,p.category,p.product_name from product as p
right join sales as s
on p.product_id=s.product_id

---full join on sales and product
select s.order_line,s.order_id,s.quantity,p.category,p.product_name from product as p
full join sales as s
on p.product_id=s.product_id

--applying joins on three tables(customer,sales,product)

select c.customer_id,c.customer_name,c.city,s.ship_mode,p.product_id,
p.category,p.product_name,s.quantity,s.order_date,s.ship_date
from sales as s
inner join customer as c 
on s.customer_id=c.customer_id
inner join product as p 
on p.product_id=s.product_id



