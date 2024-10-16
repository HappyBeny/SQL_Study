SELECT a.order_id ,
a.restaurant_name ,
a.price,
b.pay_type,
b.vat
FROM food_orders a left join payments b on a.order_id = b.order_id
where cuisine_type = 'Korean'