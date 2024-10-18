SELECT e.name, e.department, e.salary, a.name Top_Earner, a.Salary Top_Salary
FROM e join
(
SELECT department, name, max(salary) Top_salary 
FROM employees e
group by department
) a
on e.department = a.department


SELECT department, avg(salary) Top_avg_Sal
FROM employees
group by department
having avg(salary) = (
SELECT max(a.avS) max_avg
FROM 
(
SELECT avg(Salary) avS
FROM employees e
group by department
) a
) b