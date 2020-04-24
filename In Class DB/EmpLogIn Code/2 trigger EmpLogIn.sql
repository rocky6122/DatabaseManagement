use employees;

drop trigger if exists InsertLogIn;

delimiter ||
create trigger InsertLogIn
after insert on EmployeeContact
	for each row begin
		declare cid int; -- Just created a variable named 'cid'
        declare zip char(5);
        declare city varchar(255);
        
        set cid = NEW.cid;
        set city = (select ecity from Address 
					where eaid = LAST_INSERT_ID(eaid) -- Most recent inserted eaid
                    group by eaid
                    order by max(eaid) desc
                    limit 1);
        set zip = (select ezip from Address 
					where eaid = LAST_INSERT_ID(eaid) -- Most recent inserted eaid
                    group by eaid
                    order by max(eaid) desc
                    limit 1);
        
        if cid = 2 then
		insert into EmpLogIn Values
        (NEW.eid,New.contact,concat(city,zip));
        end if;
	end
||



