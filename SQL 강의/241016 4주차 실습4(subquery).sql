SELECT restaurant_name,
case when sum_of_quantity <=5 then 0.1
when sum_of_quantity > 15 and sum_of_price >=300000  then 0.005
else 0.01 end ratio_of_add
FROM 
(
SELECT restaurant_name, sum(quantity) sum_of_quantity , sum(price ) sum_of_price
FROM food_orders fo 
group by 1
) a