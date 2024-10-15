SELECT order_id ,
restaurant_name ,
day_of_the_week ,
delivery_time ,
IF (delivery_time >= if(day_of_the_week='weekday', 25, 30), "Late", "On-time")
FROM food_orders fo 