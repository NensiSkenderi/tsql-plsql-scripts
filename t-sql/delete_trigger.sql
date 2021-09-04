--per cdo dept te fshire te fshihen dhe punonjesit

select * from hr.dbo.EMPLOYEES;

use hr go

create trigger after_department_delete on dbo.departments
for DELETE 
AS

BEGIN
	DELETE FROM hr.dbo.EMPLOYEES where DEPARTMENT_ID in (select DEPARTMENT_ID from deleted);
END;

delete from hr.dbo.departments where department_id = 4;