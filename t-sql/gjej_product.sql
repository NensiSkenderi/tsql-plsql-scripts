use NORTHWND
go

select * from Products

--gjej produktin me emer t caktum

create or alter function gjej_produkt(@prod_name varchar(200))
returns varchar(150)
as

begin

declare @info varchar(150);

select @info = ProductName + ' ' + QuantityPerUnit  from Products
where ProductName = @prod_name;

return @info

end;


select dbo.gjej_produkt('Chai');