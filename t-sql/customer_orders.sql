use NORTHWND
go

--Find the number of Orders a customer with ID has

select * from Orders o join Customers c
	on o.CustomerID = c.CustomerID 
	where c.CustomerID = 'Bolid';

create or alter procedure customer_orders(@cust_id varchar(100))
as

begin

	select count(OrderID) from Orders  
	where CustomerID = @cust_id;

end;

exec customer_orders @cust_id = 'Bolid'