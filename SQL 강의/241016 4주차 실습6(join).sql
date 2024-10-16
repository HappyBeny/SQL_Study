SELECT a.order_id ,
a.restaurant_name ,
a.price,
b.vat,
a.price*b.vat  "수수료"
FROM food_orders a inner join payments b on a.order_id = b.order_id 