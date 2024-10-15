SELECT restaurant_name ,
order_id ,
delivery_time,
price ,
addr ,
CASE when delivery_time between 26 and 30 then price*1.05*(if (addr like '서울%', 1.1, 1))
when delivery_time > 30 then price*1.1*(if (addr like '서울%', 1.1, 1))
else 0 end "수수료"
FROM food_orders 