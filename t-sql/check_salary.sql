--mos lejo punonjes me salary < 1000

use hr go

create or alter trigger before_employees_insert on dbo.employees
for INSERT 
AS
begin 
	if (select SALARY from inserted)<1000
		
		
		ROLLBACK;
		else
		COMMIT;
end;

select * from hr.dbo.EMPLOYEES;
insert into hr.dbo.EMPLOYEES values(1,'amanda', 'cerny','actor',9998,2,1);