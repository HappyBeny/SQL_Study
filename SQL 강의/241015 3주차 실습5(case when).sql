SELECT restaurant_name "식당 이름",
price/quantity "단가",
cuisine_type ,
order_id ,
CASE when (price/quantity < 5000) and cuisine_type = 'Korean' then "한식1"
when (price/quantity BETWEEN 5000 and 15000) and cuisine_type = 'Korean' then "한식2"
when (price/quantity > 15000) and cuisine_type = 'Korean' then "한식3"
when (price/quantity < 5000) and cuisine_type in ('Japanese','Chinese', 'Thai', 'Vietnamese', 'India') then "아시아식1"
when (price/quantity BETWEEN 5000 and 15000) and cuisine_type in ('Japanese','Chinese', 'Thai', 'Vietnamese', 'India') then "아시아식2"
when (price/quantity > 15000) and cuisine_type in ('Japanese','Chinese', 'Thai', 'Vietnamese', 'India') then "아시아식3"
when (price/quantity < 5000) and cuisine_type not in('Korean','Japanese','Chinese', 'Thai', 'Vietnamese', 'India') then "기타1"
when (price/quantity BETWEEN 5000 and 15000) and cuisine_type not in('Korean','Japanese','Chinese', 'Thai', 'Vietnamese', 'India') then "기타2"
when (price/quantity > 15000) and cuisine_type not in('Korean','Japanese','Chinese', 'Thai', 'Vietnamese', 'India') then "기타3" end "음식 종류"
FROM food_orders
