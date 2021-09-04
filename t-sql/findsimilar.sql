use NORTHWND
go

--find products with the product name similar to _?_

create or alter procedure find_similar_product(@keyword varchar(100))
as 

begin

	select * from Products where ProductName LIKE '%'+@keyword+'%'; 

end

exec find_similar_product @keyword = 'Ch';