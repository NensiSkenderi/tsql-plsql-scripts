use NORTHWND
go

select * from Products

create or alter trigger trego_rreshta
on region
for insert,update 
as

begin
	Raiserror('%d rows modified' ,0,1,@@rowcount);
end;

select * from Region

insert into Region values (7,'tst1')
insert into Region values (8,'tst2')
insert into Region values (9,'tst3')

delete from Region where RegionID = 6