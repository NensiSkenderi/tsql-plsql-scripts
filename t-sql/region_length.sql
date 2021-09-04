--This is going to be an AFTER INSERT trigger . 
--I will use this trigger to check that only  a number of characters
-- more than seven will be inserted in the RegionDescription column 
--of the dbo.Region column.The code follows

use NORTHWND
go

select * from Region

create or alter trigger region_length
on region 
after insert
as

begin 
	declare @reg_desc varchar(100)
	select @reg_desc = RegionDescription from inserted;

	if len(@reg_desc) > 7
	begin
		print 'nk lejohet desc me sh se 7 karaktere';
		ROLLBACK TRAN
	end

end


insert into Region values(5,'Test')
insert into Region values(6,'Test me sh se 7 ')