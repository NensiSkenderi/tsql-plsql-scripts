

-- a delete trigger that does does a cascade delete

create trigger afterDeptDelete on departments 
after delete as

begin
		if exists (

			select first_name , last_name  from EMPLOYEES where DEPARTMENT_ID in 
			(
				select DEPARTMENT_ID from departments
			)
		)

		begin
			print 'ekziston';
			raiserror ('nuk mund te fshihet dept se ka punonjes',1,10);
			rollback
		end;
end

delete from departments where department_id = 2;
