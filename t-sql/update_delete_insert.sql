--kur behet update, insert or delete do printoje rowcount e rreshtit
--tek instead of nuk behet asgje pergjithsisht vtm jepet i msg
create or alter trigger afterUIDManagers on manager
instead of update,insert,delete as
--kjo duhet after qe tna beje pune tamam
begin

	print 'afektohen '+CONVERT(VARCHAR(5),@@ROWCOUNT) + 'rreshta';

end

select * from manager

insert into manager(MANAGER_ID,first_name, LAST_NAME) values(7,'rudy','manusco')
insert into manager(MANAGER_ID,first_name, LAST_NAME) values(8,'test','test')

delete from manager where MANAGER_ID > 6;