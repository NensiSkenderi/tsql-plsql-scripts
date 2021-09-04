use NORTHWND
go

create or alter procedure info_customers as
	select * from Customers

	exec info_customers

select * from Products
--Creating a Stored Procedure with Input Parameters 
create or alter procedure enter_input(@p1 int, @p2 int)
as
begin
	select ProductID, ProductName , SupplierID , CategoryID from Products
	where SupplierID = @p1 and CategoryID = @p2;

	end

	exec enter_input @p1=2 , @p2=2;