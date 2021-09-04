
--KRIJO PROCEDURA
--Find Products by searching by name

create or alter procedure find_prod_by_name(@emri varchar(100))
as

begin
	select * from Products where ProductName = @emri;
end

exec find_prod_by_name @emri = 'Chai'

--Find Products with the product name similar to _?_

create or alter procedure find_similar_prod(@emri varchar(100))
as

begin
	select * from Products where ProductName LIKE '%' + @emri+ '%'
end

exec find_similar_prod @emri = 'ka'

--Find Products made by the supplier name

create or alter procedure find_prod_by_supplier(@supp_name varchar(100))
as

begin 
	select p.ProductName,p.ProductID,p.SupplierID,s.ContactName from Suppliers s
	join Products p on s.SupplierID = p.SupplierID
	where s.ContactName = @supp_name
end

exec find_prod_by_supplier @supp_name = 'Carlos Diaz'

--Find the number of Orders a customer with ID has
create or alter procedure nr_of_orders(@cust_id varchar(100))
as

begin
	select count(o.OrderID) from Orders o
	where o.CustomerID = @cust_id
end

exec nr_of_orders @cust_id = 10248

