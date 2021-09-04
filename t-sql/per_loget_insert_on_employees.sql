
create or alter trigger afterEmployeesInsert on employees
instead of  insert as

begin
	declare @emp_name varchar(100), @log varchar(100) 
	select @emp_name = inserted.FIRST_NAME from inserted
	select @log =  'log name ' + @emp_name
	insert into loget values(@log, GETDATE());
end

select * from loget

delete from loget where log_id > 6