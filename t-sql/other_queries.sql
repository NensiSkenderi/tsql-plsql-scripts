use NORTHWND
go

--Create a phone list of customer contacts (just company and contact names with phone and FAX numbers) sorted by company name.
select Phone , CompanyName, Fax from Customers order by CompanyName;

--Modify the list to include only customers from the United Kingdom and at the same time, 
--use the aliases Company and Customer for the first two column headers
select CompanyName as Company , CustomerID as Customer from Customers 
where Country = 'UK'

--Create alphabetically sorted product lists showing product name (ProductName), supplier (SupplierID), and unit price (UnitPrice) for the following:
--          All products (result: 77 products)
--          Products that cost no more than $10 (14)
--          Products in the $10 to  $20 price range (29)
--          Chocolates (2 or 3)
select ProductName, SupplierID, UnitPrice from Products order by ProductName
select ProductName, UnitPrice from Products where UnitPrice < 11;
select ProductName, UnitPrice from Products where UnitPrice between 10 and 20;
select ProductName, UnitPrice from Products where ProductName Like '*Choc*' or ProductName Like '*Schok*'; 

--Modify the AllCustomers phone list to make separate lists for customers with and without an assigned region (two separate queries). 
-- Use is null or is not null to make the distinction.
select Phone,region from Customers where Region is not null
select Phone, Region from Customers where Region is null

--Create an extract of the Categories table without pictures and call it CategoriesNoPix.
--(ketu krijohet i table e re)
select CategoryID , CategoryName, Description Into CategoriesNoPix from Categories 
select * from CategoriesNoPix

--Get the top 10 most expensive products
select distinct top 10 ProductName, UnitPrice from Products
order by UnitPrice desc

--vlerat e unit price qe jan me t larta se mesatarja
select UnitPrice from Products 
where UnitPrice > (select avg(unitprice) from Products) order by UnitPrice 

select avg(unitprice) from Products
