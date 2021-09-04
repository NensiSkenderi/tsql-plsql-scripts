--no new tables are allowed

use NORTHWND
go

create or alter trigger no_new_table
on database 
for create_table
as

begin
	print 'no new tables are allowed';
	ROLLBACK TRAN
end

create table nsene (
	name varchar(100)
)