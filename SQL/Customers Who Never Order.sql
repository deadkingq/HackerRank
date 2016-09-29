select Name as Customers FROM Customers left join Orders on Customers.Id=Orders.CustomerId
where Orders.CustomerId is Null;


SELECT Name as Customers FROM Customers c WHERE c.Id NOT IN (SELECT CustomerId FROM Orders o);
