

create or alter function kthe_info(@id int)
returns varchar(40)
as
begin
DECLARE @emri varchar(40);

select @emri = emri + ' ' + mbiemri from nensi.dbo.students 
	where id = @id;

return @emri;

end;

go

select dbo.kthe_info(2);