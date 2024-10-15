SELECT order_id ,
price ,
quantity ,
day_of_the_week ,
IF (day_of_the_week='weekday', 3000, 3500)*(IF(quantity>3, 1.2, 1)) "할증료" 
FROM food_orders fo 