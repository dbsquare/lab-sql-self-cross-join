-- Get all pairs of actors that worked together.
select a.actor_id, a.first_name, a.last_name, b.actor_id, b.first_name, b.last_name
from actor a
join actor b
on a.actor_id = b.actor_id

join film_actor f
on a.actor_id = f.actor_id 
limit 50;

select DISTINCT CONCAT(a.first_name, " ", a.last_name) as ACTOR_1 , CONCAT(b.first_name, " ", b.last_name) as ACTOR_2
from film_actor f
join actor a
on a.actor_id = f.actor_id

join actor b
on b.actor_id <> f.actor_id

limit 100;

-- Get all pairs of customers that have rented the same film more than 3 times.

select  CONCAT(c.first_name, " ", c.last_name) as customer_1, r.rental_id, CONCAT(cu.first_name, " ", cu.last_name) as customer_2
from customer a
join rental r
using (customer_id)
join customer b
where a.customer_id <> b.customer_id

limit 56;

-- Get all possible pairs of actors and films.
#UNFINISHED :(

