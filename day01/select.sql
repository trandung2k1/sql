create database ecommerce

go 

use ecommerce

go 
--delete table: drop table customers
create table customers(
	customer_id int identity(1, 1) primary key,
	first_name nvarchar(20) not null,
	last_name nvarchar(20) not null,
	phone char(15),
	email varchar(50) not null,
	street nvarchar(50) not null,
	city nvarchar(20) not null,
	state char(5) not null,
	zip_code char(5) not null
)

insert into customers values('Debra', 'Burks', null, 'debra burks@gmail.com', '9273 Thorne Ave', 'Orchard Park', 'NY', '14127')
insert into customers values('Kasha', 'Todd', null, 'kasha todd@gmail.com', '910 Vine Street', 'Campbell', 'CA', '95008'),
							('Tameka', 'Fisher', null, 'tameka fisher@gmail.com', '769C Honey Creek St', 'Redondo Beach', 'CA', '90278')
--from -> select
select * from customers

select customer_id, first_name, last_name from customers

--from -> where -> select
select * from customers
where state = 'CA'

--from -> where -> select -> order by
select * from customers
where state = 'CA'
order by customer_id

-- from -> where -> group by -> select -> order by
select city,count(*) from customers
where state = 'CA'
group by city
order by city

--having use group,
--default asc
select city, count(*) from customers
where state = 'CA'
group by city
having count(*) = 1
order by city desc



--order by
/*
SELECT
    select_list
FROM
    table_name
ORDER BY 
    column_name | expression [ASC | DESC ];
*/

--asc
select first_name, last_name from customers
order by first_name

--desc
select first_name, last_name from customers
order by first_name desc

--sort multiple column
--sort city -> first_name
select city, first_name, last_name from customers
order by city, first_name


select city, first_name, last_name from customers
order by city desc, last_name asc

select city, first_name, last_name from customers
order by state

select first_name, last_name  from customers
order by len(first_name) desc

--1 =  first_name, 2 = last_name
select first_name, last_name from customers
order by 1, 2

--offset and fetch use order by
select first_name, last_name from customers
order by first_name
/*
Debra	Burks
Kasha	Todd
Tameka	Fisher
*/

select first_name, last_name from customers
order by first_name
offset 1 rows
/*
Kasha	Todd
Tameka	Fisher
*/

--skip 1, select 1 record
select first_name, last_name from customers
order by first_name
offset 1 rows
fetch next 1 rows only
--Kasha	Todd

--get 2 the largest customer_id
select customer_id, first_name, last_name from customers
order by customer_id desc
offset 0 rows
fetch first 2 rows only
/*
3	Tameka	Fisher
2	Kasha	Todd
*/
--Note offset = skip, fetch = Number of records you want to receive

--TOP

select top 1 * from customers
order by customer_id desc

select top 10 percent * from customers
order by customer_id desc

insert into customers values('Tran', 'Dung', null, 'trandung@gmail.com', 'Ninh Binh', 'VietNam', 'NB', '95008')

select top 1 WITH TIES * from customers
order by zip_code desc