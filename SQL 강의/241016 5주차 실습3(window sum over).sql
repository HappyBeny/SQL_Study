SELECT cuisine_type,
       restaurant_name,
       cnt_order,
       sum(cnt_order) over (PARTITION by cuisine_type) sum_cuisine,
       sum(cnt_order) over (PARTITION by cuisine_type order by cnt_order) cum_cuisine
FROM 
(
SELECT cuisine_type ,
       restaurant_name ,
       COUNT(1) cnt_order
from food_orders 
group by 1, 2
) a
order by cuisine_type, cnt_order