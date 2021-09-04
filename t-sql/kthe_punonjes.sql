--merr id_manager dhe kthen punonjesit e ketij menaxheri

create or alter function kthe_punonjes(@id_manager int)
returns varchar 
begin 
	return (select e.first_name  from hr.dbo.EMPLOYEES e join hr.dbo.manager m on
	e.MANAGER_ID = m.MANAGER_ID where m.manager_id = @id_manager );

	


end;

select * from hr.dbo.employees;

select dbo.kthe_punonjes(1);