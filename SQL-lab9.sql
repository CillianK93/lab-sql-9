-- creating a table for may and inserting values
create table rentals_may(
`rental_id`int UNIQUE NOT NULL,
`rental_date` date,
`inventory_id`int,
`customer_id`int,
`return_date`date,
`staff_id`int,
`last_update`date,
CONSTRAINT PRIMARY KEY (rental_id));

drop table if exists rentals_may;

insert into rentals_may
select * from rental
where rental_date between '2005-05-01 00:00:00' and '2005-05-31 23:59:59' and 
return_date between '2005-05-01 00:00:00' and '2005-05-31 23:59:59';


select * from rentals_may;

-- creating table for june and inserting values
create table rentals_june(
`rental_id`int UNIQUE NOT NULL,
`rental_date` date,
`inventory_id`int,
`customer_id`int,
`return_date`date,
`staff_id`int,
`last_update`date,
CONSTRAINT PRIMARY KEY (rental_id));

insert into rentals_june
select * from rental
where rental_date between '2005-06-01 00:00:00' and '2005-06-30 23:59:59' and 
return_date between '2005-06-01 00:00:00' and '2005-06-30 23:59:59';

select * from rentals_june;

-- Checking the number of rentals for each customer for May
select customer_id, count(rental_id) from rentals_may
group by customer_id
order by count(rental_id) desc;

-- Checking the number of rentals for each customer for June
select customer_id, count(rental_id) from rentals_june
group by customer_id
order by count(rental_id) desc;







