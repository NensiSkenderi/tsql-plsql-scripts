create or alter trigger deleteOnCities on locations
instead of delete as

begin 
	declare @loc_id int
	select @loc_id = deleted.location_id from deleted;

	if (@loc_id < 2)
	begin 
		print('u thirr triggeri');
		RAISERROR('nuk mund t fshish city me id < 4',16,1);
	end;
end;

delete from locations where location_id =1;

select * from locations;