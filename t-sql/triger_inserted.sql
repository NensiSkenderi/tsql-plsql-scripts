
select * from locations
create trigger new_city on cities
after insert as

BEGIN 
	insert into cities(city_name,country_name)
select inserted.city_name, inserted.country_name from inserted

END

insert into cities(city_name,country_name) values('Elbasan','Albania');

select * from cities