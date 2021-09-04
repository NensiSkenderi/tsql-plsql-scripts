select * from hr.dbo.employees;
select * from hr.dbo.departments;
select * from hr.dbo.locations;


create or alter procedure update_emri(@emri varchar(100))

as 

begin

update hr.dbo.EMPLOYEES set FIRST_NAME = @emri + ' updated' where FIRST_NAME = 'nseneupdated';


end;

exec update_emri 'nsene'

select count(*) , job_id from hr.dbo.employees group by job_id;