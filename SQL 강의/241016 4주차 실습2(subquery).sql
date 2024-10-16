SELECT restaurant_name, sido,
case when avg_time >= 20 then '<=20'
when avg_time between 21 and 30 then '21 < x <= 30'
else '>30' end time_segment
FROM 
(
SELECT restaurant_name, substr(addr,1,2) sido, avg(delivery_time) avg_time
from food_orders fo
group by 1,2
) a