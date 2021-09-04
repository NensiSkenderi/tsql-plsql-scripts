--get list of all the orders processed with category name as an input parameter

use NORTHWND
go

select o.OrderID , c.categoryName from Orders o
join [Order Details] od on o.OrderID = od.OrderID 
join Products p on od.ProductID = p.ProductID 
join Categories c on p.CategoryID = c.CategoryID
where c.CategoryName = 'Beverages';

create or alter function list_orders(@category_name varchar(100))
returns varchar(100)
as

begin

declare @info int;

	select @info = o.OrderID from Orders o
	join [Order Details] od on o.OrderID = od.OrderID 
	join Products p on od.ProductID = p.ProductID 
	join Categories c on p.CategoryID = c.CategoryID
	where c.CategoryName = @category_name;

	return @info;
end;

select dbo.list_orders('Beverages');