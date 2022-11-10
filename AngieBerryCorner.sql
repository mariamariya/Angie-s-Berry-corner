create table Customer(
	customer_id int PRIMARY KEY,
	first_name varchar(35),
	last_name varchar(35)
);


--load data into Customer table using the copy command method--
copy Customer 
from 'C:\Program Files\PostgreSQL\loyalty_customers.csv' delimiter ',' csv header;



create table Employee(
	employee_id int PRIMARY KEY,
	first_name varchar(35),
	last_name varchar(35),
	start_date date,
	end_date date
);

--load data into Employee table using the copy command method--
copy Employee
from 'C:\Program Files\PostgreSQL\employee.csv' delimiter ',' csv header;

create table Transaction(
	id varchar,
	customer_id int,
	product_id int,
	quantity int,
	paid_at timestamp,
	Amount int
);

--load data into Transaction table using the copy command method--
copy Transaction
from 'C:\Program Files\PostgreSQL\transaction_report.csv' delimiter ',' csv header;


create table Product(
	product_id int PRIMARY KEY,
	name varchar(35),
	price float,
	unit varchar
);


--load data into Product table using the copy command method--
copy Product
from 'C:\Program Files\PostgreSQL\products.csv' delimiter ',' csv header;


--what is angies berry corners average daily sales volume--

select 
	avg(quantity) as AvgDailySales,
	avg(amount) as avgsalesamount
from transaction;


--Which products sell best?--

select p.product_id,
	p.name,
	sum(quantity) as total_qty,
	sum(amount) as total_sales
from Product p
join Transaction t
on p.product_id = t.product_id
group by 1,2
order by 3 desc,4 desc
limit 5;


--Top 5 Angie loyalty customer?--

select  distinct t.customer_id,
	concat(first_name, ' ', last_name) as full_name,
	t.amount,
	(2*amount) as loyalty_points
from Transaction t
inner join Customer c
on t.customer_id = c.customer_id
group by 1,2,3
order by 4 desc
limit 5;


--What is the full name of their current staff?--

select 
	employee_id,
	concat(first_name, ' ', last_name) as full_name
from employee
where end_date is null;


--What is the product that generate the least income and by much?--

select t.product_id,
	p.name,
	sum(amount)
from Transaction t
join Product p
on t.product_id = p.product_id
group by 1,2
order by 3 asc
limit 1;


-- The organization want to ascertain the income realize from sales--

select 
	sum(amount) as total_income
from Transaction
where amount is not null;

/*The organization want to ascertain the amount they generate from each product*/

select 
	p.name,
	sum(amount) as total_amount
from Transaction t
join Product p
on t.product_id = p.product_id
group by 1
order by 2 desc;


--Product that generate the highest income and by how much--

select
	 p.name,
	 sum(amount) as total_income
from Transaction t
join Product p
on t.product_id = p.product_id
group by 1
order by 2 desc
limit 1;

/* the organization is looking at identifying the customer that patronize them the most in order for them to encourage them with a gift*/

select
	concat(first_name, ' ', last_name) as full_name,
	sum(amount) as total_amount
from Transaction t
join Customer c
on t.customer_id = c.customer_id 
group by 1
order by 2 desc
limit 5;


--which customer generate least income and by how much?--

select distinct t.customer_id,
	concat(first_name, ' ', last_name) as full_name,
	sum(amount)
from Transaction t
join Customer c
on t.customer_id = c.customer_id
group by 1,2
order by 3,2 asc
limit 5;

--which of the employee spend the least day at angie.--

select employee_id,
	concat(first_name,' ', last_name) as full_name,
	start_date,
	end_date,
	min((end_date - start_date)+1) as days
from Employee
group by 1,2
having end_date is not null
order by 5 asc
limit 1;


--What is the organization busiest hour?--

select
	date_part('hour', paid_at) as hour,
	sum(quantity) as total_qty,
	sum(amount) as total_amount
from Transaction
group by 1
order by 2 desc
limit 1;


-- Which day of the week does the organization sales the most--

select 
	to_char(paid_at, 'Day') as day,
 	sum(amount) as total_amount,
	sum(quantity) as total_qty
from Transaction
group by 1
order by 2 desc, 3 desc
limit 1;



--Which month of the year does the organization makes the most sales--

select 
	sum(amount) as total_amount,
	sum(quantity) as total_qty,
	date_part('month', paid_at) as month,
	to_char(paid_at,'Month') as month_name
from transaction
group by 3,4
order by 1 desc,2 desc
limit 1;
