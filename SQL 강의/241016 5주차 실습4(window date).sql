SELECT DATE_FORMAT(date(date), '%Y') "년",
       DATE_FORMAT(date(date), '%M') "월",
       DATE_FORMAT(date(date), '%Y%m') "년월",
       COUNT(1) "주문 건수"
FROM food_orders f inner join payments p on f.order_id = p.order_id 
where DATE_FORMAT(date(date), '%m') = '03'
group by 1, 2, 3
order by 1
