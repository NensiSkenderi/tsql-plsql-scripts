use NORTHWND
go

-- Give the name of employees and the city where they live for employees who have
--sold to customers in the same city.

select e.FirstName , e.City , c.City from Employees e
join Orders o on e.EmployeeID = o.EmployeeID
join Customers c on o.CustomerID = c.CustomerID
where e.City = c.City

--Give the name of customers who bought all products with price less than 5.
--whose identifier is �LAZYK� (CustomerID eshte emer )
--sold, ordered by the employee identifier.