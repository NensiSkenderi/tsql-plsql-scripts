use NORTHWND
go

create or alter procedure kthe_rreshta
as

select count(*) from Products;

exec kthe_rreshta