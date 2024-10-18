SELECT c.CustomerName ,
count(1) OrderCount,
sum(o.TotalAmount) TotalSpent
FROM orders o left join customers c on o.CustomerID = c.CustomerID
group by customerName


select c.Country , c.CustomerName Top_Customer, sum(o.TotalAmount) Top_Spent
from orders o left join customers c on o.CustomerID = c.CustomerID
group by 1,2
having sum(o.TotalAmount) = 
(
select max(sum_price) 
from 
(
SELECT c.Country , c.CustomerName , sum(o.TotalAmount) sum_price 
FROM orders o left join customers c on o.CustomerID = c.CustomerID
group by 1,2
) a
group by country
)