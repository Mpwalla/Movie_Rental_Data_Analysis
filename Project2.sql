SELECT 
cus.customer_id,
cus.first_name  || ' ' || cus.last_name  as Customer_Full_Name,
country.country,
f.rating,
cat.name as Genre,
(f.rental_rate * f.rental_duration) as 'profit',
s.staff_id,
s.first_name || ' ' || s.last_name as Employee_full_Name,
act.first_name || ' ' || act.last_name as Actor_Full_Name,
f.title as movie_title,
ren.rental_date,
ren.return_date,
st.store_id,
pay.payment_id,
pay.amount as payment_amount
from customer cus
LEFT JOIN address a ON a.address_id   = cus.address_id 
LEFT JOIN city c  on c.city_id  = a.city_id 
LEFT JOIN country on country.country_id = c.country_id
LEFT JOIN payment pay on pay.customer_id = cus.customer_id 
LEFT JOIN rental ren on ren.customer_id  = cus.customer_id 
LEFT JOIN inventory inv on inv.inventory_id =ren.inventory_id 
LEFT JOIN film f on f.film_id  = inv.film_id 
LEFT JOIN film_category fc on fc.film_id = f.film_id 
LEFT JOIN category cat on cat.category_id = fc.category_id 
LEFT JOIN staff s on s.staff_id  = pay.staff_id 
LEFT JOIN film_actor fa on fa.film_id  = f.film_id 
LEFT JOIN actor act on act.actor_id  = fa.actor_id 
LEFT JOIN store st on st.store_id = s.store_id 















