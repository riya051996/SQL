show databases;
use customers;
SELECT * FROM customers.`copy of customers`;
Select customernumber,customername,phone from customers.`copy of customers`;
select customernumber,customername,phone from customers.`copy of customers` limit 10; 
select * from customers.`copy of customers` where country = 'France';
select country from customers.`copy of customers`;
Select * from customers.`copy of customers` where country = 'France' or country = 'USA';
select * from customers.`copy of customers` where country IN ('France', 'USA') limit 5;
select customernumber, country from customers.`copy of customers` where country NOT IN ('France', 'USA') limit 5;
select * from customers.`copy of customers` where creditLimit between 200000 and 900000;
select country from customers.`copy of customers` where creditLimit between 200000 and 900000;
select customernumber, city, state from customers.`copy of customers` where city is NULL or state is NULL;
select customernumber, addressline2, state from customers.`copy of customers` 
where addressline2 is NULL and state is NULL;
select distinct country from customers.`copy of customers` order by country;
select distinct country from customers.`copy of customers` order by country desc;
select distinct country, state from customers.`copy of customers` order by 1,2 desc;
SELECT * FROM customers.`copy of customers`;
select count(*) as Customer_count from customers.`copy of customers`;
select count(state) as State_count from customers.`copy of customers`;
select count(distinct state) as State_count from customers.`copy of customers`;
select count(country) as Country_count from customers.`copy of customers`;
select count(distinct country) as Country_count from customers.`copy of customers`;
select distinct customernumber, creditLimit from customers.`copy of customers` order by creditLimit desc limit 5;
select distinct customernumber, creditLimit from customers.`copy of customers` order by creditLimit desc;
select sum(creditlimit) as sum_credit, count(creditlimit) as count_credit, min(creditlimit) as min_credit,
max(creditlimit) as max_credit, avg(creditlimit) as avg_credit from customers.`copy of customers`;
select customername from customers.`copy of customers` where customername like 'A%' order by customername limit 5;
select customername from customers.`copy of customers` where customername like 'A__';
select country, count(customernumber) as cnt from customers.`copy of customers` group by country
order by cnt desc limit 5;
select country,state, sum(creditlimit) as sum_cred, count(customerNumber) as cst_num 
from customers.`copy of customers` where country in ('USA') group by country,state having sum_cred > 600000
order by sum_cred desc;
select a.customernumber,a.country, b.ordernumber,b.status
from customers.`copy of customers` a
inner join orders b
on a.customerNumber = b.customerNumber
order by a.customernumber;