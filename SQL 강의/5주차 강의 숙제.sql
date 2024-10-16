SELECT cuisine_type,
     max(IF(age between 10 and 19, cnt_order, 0)) "10대",
     max(IF(age between 20 and 29, cnt_order, 0)) "20대",
     max(IF(age between 30 and 39, cnt_order, 0)) "30대",
     max(IF(age between 40 and 49, cnt_order, 0)) "40대",
     max(IF(age between 50 and 59, cnt_order, 0)) "50대"
FROM 
(
SELECT f.cuisine_type ,
c.age,
count(1) cnt_order
FROM food_orders f inner join customers c on f.customer_id =c.customer_id 
where age between 10 and 59
group by 1, 2
) a
group by 1