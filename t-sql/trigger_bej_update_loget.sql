
use hr
go

create or alter trigger after_employees_update ON dbo.employees
for UPDATE
AS
begin
	INSERT into hr.dbo.loget values('u be update', GETDATE());
end;


update hr.dbo.EMPLOYEES set first_name = 'nsene' where EMPLOYEE_ID = 4;

select * from hr.dbo.loget;

create table loget(
	emri varchar(100),
	data datetime
)

drop table loget;