SELECT cuisine_type,
       restaurant_name,
       cnt_order,
       rank() over (partition by cuisine_type order by cnt_order desc) ranking
FROM 
(
SELECT cuisine_type ,
       restaurant_name ,
       COUNT(1) cnt_order
from food_orders 
group by 1, 2
) a