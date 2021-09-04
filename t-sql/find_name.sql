--Find out the name of the employee and name of the department for employee 2

select * from hr.dbo.departments;
select * from hr.dbo.employees;

declare
	@emp_id int = 2,@info varchar(100);
begin

select  @info = e.first_name + ' ' +d.department_name from hr.dbo.EMPLOYEES e join hr.dbo.departments d
on e.DEPARTMENT_ID = d.department_id where e.EMPLOYEE_ID = @emp_id;

PRINT @info;

end;