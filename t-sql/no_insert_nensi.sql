use hr
go

select * from Products

create trigger no_insert_nensi 
on names
for insert
as
declare @emri varchar(100)
select @emri = emri from inserted
begin 
	if @emri = 'nensi'
	begin
		print 'nensi nuk mund te shtohet'
		ROLLBACK TRAN
	end
end


insert into names values('nensi' , 45 , 'arkitekture')
