select district
from address 
inner join customer
on address.address_id = customer.address_id
where district = 'Texas';

select amount
from payment
join customer
on payment.customer_id = payment.customer_id