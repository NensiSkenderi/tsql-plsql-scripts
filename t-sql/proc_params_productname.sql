--find  products by searching by name

use NORTHWND
go

select * from Products;

create or alter procedure find_product_by_name(@prod_name varchar(100))
as

begin
	--SET NOCOUNT ON; --ca esh kjo?
	select * from Products 
	where ProductName = @prod_name;
end;

exec find_product_by_name @prod_name = 'Chai';

