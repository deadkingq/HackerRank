SELECT name
FROM salesperson
WHERE sales_id NOT IN (
    SELECT sales_id
    FROM orders JOIN company 
    ON orders.com_id = company.com_id
    WHERE company.name = 'RED'
)
