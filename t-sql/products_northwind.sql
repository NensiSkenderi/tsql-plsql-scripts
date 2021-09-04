use NORTHWND
go
select p.ProductName, p.CategoryID, c.CategoryName from Products p 
join Categories c on p.CategoryID = c.CategoryID

--Write a query to get Product name and quantity/unit.

select productName as emri_produktit,QuantityPerUnit from Products

--Write a query to get current Product list (Product ID and name). (current qeka discontinued = 0)

select ProductID, ProductName from products where Discontinued = 'FALSE'; --ose Discontinued = 0 sepse esht tipi BIT

--Write a query to get most expense and least expensive Product list (name and unit price).
--meqe duhet liste do i rendisim
select productName , unitPrice from Products order by UnitPrice desc

--gjej max e most expensive product
select MAX(UnitPrice) from Products 

-- Write a query to get Product list (id, name, unit price) where current products cost less than $20
select ProductID , ProductName, UnitPrice  from Products where UnitPrice < 20  and Discontinued = 0; -->per current

--Write a query to get Product list (id, name, unit price) where products cost between $15 and $25.
select ProductID , ProductName, UnitPrice  from Products where UnitPrice between 15 and 20;

--Write a query to get Product list (name, unit price) of above average price.
select avg(unitprice) from Products
select productName , unitprice from products where unitprice > (select avg(unitprice) from Products) ;

--Write a query to get Product list (name, unit price) of ten most expensive products.
select top 10 ProductName, UnitPrice from Products order by UnitPrice desc

--Write a query to count current and discontinued products.
select count(Discontinued) from Products group by Discontinued

-- Write a query to get Product list (name, units on order , units in stock) of stock which is less than the unit on order.
select ProductName, UnitPrice, UnitsOnOrder, UnitsInStock from Products where UnitsInStock < UnitsOnOrder 