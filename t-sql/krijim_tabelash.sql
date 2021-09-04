
select * from hr.dbo.employees;
select * from hr.dbo.departments;
select * from hr.dbo.locations;
create table departments(
	department_id int primary key,
	department_name varchar(100),
	location_id int,
	foreign key (location_id) REFERENCES hr.dbo.locations(location_id)
)

create table locations(
	location_id int primary key,
	location_name varchar(100),
	city varchar(100)
)

--gjej qytetin e anwar

create or alter function gjej_qytetin(@emri varchar(100))
returns varchar(100)
as

begin 

declare 
	@qyteti varchar(100);

	select @qyteti = l.city from hr.dbo.locations l join hr.dbo.departments d on
	l.location_id = d.location_id join hr.dbo.EMPLOYEES e on d.department_id = e.DEPARTMENT_ID
	where e.FIRST_NAME = @emri;

	return @qyteti
end
insert into departments values(4,'shitje','2');

select dbo.gjej_qytetin('anwar');

