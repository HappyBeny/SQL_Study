SELECT name, gender, age,
case when (age between 10 and 19) and gender = 'male' then "10대 남자"
when (age between 10 and 19) and gender = 'female' then "10대 여자"
when (age between 20 and 29) and gender = 'male' then "20대 남자"
when (age between 20 and 29) and gender = 'female' then "20대 여자" end "그룹"
from customers
where age BETWEEN 10 and 30