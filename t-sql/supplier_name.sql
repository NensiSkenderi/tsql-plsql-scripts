--Find Products made by the supplier name

use NORTHWND
go

select * from Suppliers;

create or alter procedure find_prod_by_supplier(@supplier_name varchar(100))
as

begin

	select p.ProductName , s.SupplierID, s.ContactName from Products p join Suppliers s
	on p.SupplierID = s.SupplierID
	where s.ContactName = @supplier_name;

end;

exec find_prod_by_supplier @supplier_name = 'Peter Wilson';