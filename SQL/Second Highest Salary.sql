SELECT (SELECT distinct Salary FROM Employee order by Salary desc limit 1,1) as SecondHighestSalary
