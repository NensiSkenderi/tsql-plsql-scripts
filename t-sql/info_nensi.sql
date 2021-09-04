

create or alter procedure info_nensi
as
DECLARE
@emri varchar(40) = 'nensi';

BEGIN
select first_name, job_id from hr.dbo.employees where first_name = @emri;
PRINT @emri + ' test';

END;

exec info_nensi;

select * from hr.dbo.employees;


CREATE TABLE HR.dbo.manager
( 
	MANAGER_ID int primary key NOT NULL,
	FIRST_NAME VARCHAR(20),
	LAST_NAME VARCHAR(25) NOT NULL,
	FOREIGN KEY (MANAGER_ID) REFERENCES hr.dbo.EMPLOYEES(MANAGER_ID)
)