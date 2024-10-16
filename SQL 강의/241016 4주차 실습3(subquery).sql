SELECT cuisine_type,
total_quantity,
case when count_res >=5 and total_quantity >= 30 then 0.005
when count_res >=5 and total_quantity< 30 then 0.008
when count_res <5 and total_quantity >= 30 then 1
when count_res <5 and total_quantity < 30 then 2
end rate
FROM 
(
SELECT cuisine_type ,
sum(quantity) total_quantity,
count(DISTINCT restaurant_name) count_res
FROM food_orders fo 
group by 1
) a