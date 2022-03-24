--1
select district
from address 
inner join customer
on address.address_id = customer.address_id
where district = 'Texas';


--2
select amount, first_name, last_name
from payment
right join customer
on payment.customer_id = payment.customer_id
where amount > 6.99


--3
select first_name, last_name
from customer
join payment
on customer.customer_id = payment.customer_id 
where amount in (
	select amount 
	from payment
	where amount > 175
)


--4 no idea how to do this
--select concat(first_name, ' ', last_name)
--from customer c 
--where 
--
--select city_id
--from city c 
--where country_id in (
--	select country_id
--	from country c
--	where country = 'Argentina'
--)



	
--5

select category_id, count(category_id) as most
from film_category fc 
group by category_id 
order by count(*) desc
limit 1;

--6

select title from film f 
where film_id in (
	select film_id from film_actor fa 
	group by film_id 
	order by count(actor_id) desc
	limit 1
)

--7

select concat(first_name, ' ', last_name) from actor a 
where actor_id in (
	select actor_id from film_actor fa 
	group by actor_id 
	order by count(actor_id)
	limit 1
)

--8

select country 
from country c 
where country_id in (
	select country_id
	from city c2 
	group by country_id
	order by count(city_id) desc
	limit 1
);

--9
select actor from actors

