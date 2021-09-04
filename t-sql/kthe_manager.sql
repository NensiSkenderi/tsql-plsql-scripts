CREATE TABLE HR.dbo.EMPLOYEES
( 
	EMPLOYEE_ID int primary key NOT NULL,
	FIRST_NAME VARCHAR(20),
	LAST_NAME VARCHAR(25) NOT NULL,
	JOB_ID VARCHAR(10) NOT NULL,
	SALARY int,
	MANAGER_ID int,
	DEPARTMENT_ID int,
	
	FOREIGN KEY (MANAGER_ID) REFERENCES HR.dbo.manager(MANAGER_ID)
)

CREATE TABLE HR.dbo.manager
( 
	MANAGER_ID int primary key NOT NULL,
	FIRST_NAME VARCHAR(20),
	LAST_NAME VARCHAR(25) NOT NULL,
)

insert into  hr.dbo.EMPLOYEES values(5,'joana' , 'skenderi' , 'it', 6700, 1, 34);

select * from hr.dbo.EMPLOYEES;

insert into hr.dbo.manager values(4, 'vine', 'lele pons');

create or alter function kthe_manager(@id_emp int)

returns varchar(40)
as
begin

declare @manager_name varchar(40);
	select @manager_name = m.first_name from hr.dbo.EMPLOYEES e join hr.dbo.manager m on
	e.MANAGER_ID = m.MANAGER_ID where e.EMPLOYEE_ID = @id_emp;

	return (@manager_name);
END;

select dbo.kthe_manager(1);