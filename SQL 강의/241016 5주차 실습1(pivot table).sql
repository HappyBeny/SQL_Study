SELECT age,
       max(if(gender='male', cnt_order, 0)) "male",
       max(if(gender='female', cnt_order, 0)) "female"
FROM 
(
SELECT gender ,
       case when age between 10 and 19 then 10
            when age between 20 and 29 then 20
            when age between 30 and 39 then 30
            when age between 40 and 49 then 40
            when age between 50 and 59 then 50 end age,
        COUNT(1) cnt_order
FROM food_orders f inner join customers c on f.customer_id =c.customer_id 
where age BETWEEN 10 and 59
group by 1, 2
) a
group by 1
order by 1