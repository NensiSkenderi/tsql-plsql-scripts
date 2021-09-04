use NORTHWND
go

-- Give the name of employees and the city where they live for employees who have
--sold to customers in the same city.

select e.FirstName , e.City , c.City from Employees e
join Orders o on e.EmployeeID = o.EmployeeID
join Customers c on o.CustomerID = c.CustomerID
where e.City = c.City

--Give the name of customers who bought all products with price less than 5.select distinct c.ContactName from Customers cjoin Orders o on c.CustomerID = o.CustomerIDjoin [Order Details] od on o.OrderID = od.OrderIDjoin Products p on od.ProductID = p.ProductIDwhere p.UnitPrice < 5-- Give the name of customers who bought all products purchased by the customer
--whose identifier is ‘LAZYK’ (CustomerID eshte emer )select c.ContactName , c.CustomerID from Customers cjoin Orders o on c.CustomerID = o.CustomerIDjoin [Order Details] od on o.OrderID = od.OrderIDjoin Products p on od.ProductID = p.ProductIDwhere c.CustomerID = 'LAZYK'--Give the average price of products by category.select avg(p.UnitPrice) from Categories c join Products pon c.CategoryID = p.CategoryID-- Give the name of the categories and the average price of products in each category.select avg(p.UnitPrice) as mesatare , c.CategoryName from Categories cjoin Products p on c.CategoryID = p.CategoryID group by c.CategoryNameselect * from Categories-- Give the name of the companies that provide more than 3 products.select s.CompanyName from Products p join Suppliers son p.SupplierID = s.SupplierIDgroup by s.CompanyNamehaving count(s.SupplierID) > 3--For each employee give the identifier, name, and the number of distinct products
--sold, ordered by the employee identifier.select distinct e.EmployeeID,e.FirstName, count(p.ProductID) from Employees ejoin Orders o on e.EmployeeID = o.EmployeeIDjoin [Order Details] od on o.OrderID = od.OrderIDjoin Products p on od.ProductID = p.ProductIDgroup by e.EmployeeID, e.FirstNameorder by e.EmployeeID 