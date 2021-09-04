use NORTHWND
go
--Now I can create an INSTEAD OF trigger that will check if someone is trying 
--to delete any rows from the Categories table. 
--If that happens then the transaction must be rolled back.
--A message should be printed to the user as well.
create or alter trigger no_categories_delete 
on categories
instead of delete
as

begin

	declare @count int
	set @count = @@ROWCOUNT

	if @count = 0
	print 'ska rekorde';
	return;
	begin
		RAISERROR('categorite nuk mund te fshihen',10,1);
		begin
			if @@TRANCOUNT > 0
			ROLLBACK TRAN
		end
	end
end

select * from Categories
delete from Categories where CategoryID = 4;