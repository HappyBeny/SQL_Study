SELECT r_name,
case when avg_price <= 5000 then 'price_group1'
when avg_price between 5001 and 10000 then 'price_group2'
when avg_price between 10001 and 30000 then 'price_group3'
else 'price_group4' end price_group,
case when avg_age <= 29 then 'age_group1'
when avg_age between 30 and 39 then 'age_group2'
when avg_age between 40 and 49 then 'age_group3'
else 'age_group4'end age_group
from
(
SELECT a.restaurant_name r_name,
AVG(a.price) avg_price ,
avg(b.age) avg_age
FROM food_orders a inner join customers b on a.customer_id =b.customer_id 
group by a.restaurant_name 
order by 1
) aa