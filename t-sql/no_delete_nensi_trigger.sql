use hr
go

select * from names


create or alter trigger no_delete_nensi
on names
for delete
as

declare @name varchar(100)
	select @name = emri from deleted;
		
begin

	if @name = 'nensi'
	begin
	print 'Nuk mund te fshihet'
	ROLLBACK TRAN
	end

end

delete from names where emri = 'nensi';