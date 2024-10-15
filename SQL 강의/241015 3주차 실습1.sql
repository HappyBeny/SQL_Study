select SUBSTR(addr, 1, 2) "주소지",
cuisine_type "타입", AVG(price) "평균 금액"
FROM food_orders fo 
where addr like '서울%'
group by 1, 2