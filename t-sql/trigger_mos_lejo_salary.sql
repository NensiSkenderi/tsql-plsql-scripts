use hr 
go

create or alter trigger aferInsertEmployees on employees
INSTEAD OF Insert as

begin 

	declare @salary int 
	select @salary = inserted.salary from inserted

	if(@salary > 5000)
	begin
		print('po behet triggeri');
		raiserror('nuk lejohet',16,1) rollback;
	end
	
end


INSERT INTO EMPLOYEES VALUES(6,'per logs','test','test job',6602,1,1,2);

select * from EMPLOYEES

drop trigger aferInsertEmployees