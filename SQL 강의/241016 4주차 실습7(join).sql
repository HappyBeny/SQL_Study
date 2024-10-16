SELECT cuisine_type "음식 타입", 
sum(price) "원래 가격",
sum(discount_price) "할인 가격",
sum(price) - sum(discount_price) "할인 적용 가격"
from
(
SELECT a.cuisine_type ,
a.price ,
a.price * ((c.age-50)*0.005) discount_price
FROM food_orders a left join customers c on a.customer_id = c.customer_id 
where c.age >= 50
) aa
group by 1
order by 3 DESC 