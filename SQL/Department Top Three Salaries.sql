# Write your MySQL query statement below
select D.Name as Department, E.Name as Employee, E.Salary as Salary
from Employee E join Department D on E.DepartmentId=D.Id
where (select count(distinct Salary) from Employee where DepartmentId = E.DepartmentId AND Salary > E.Salary) < 3
order by E.Salary DESC;
