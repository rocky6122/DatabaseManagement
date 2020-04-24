use employees;

drop trigger if exists InsertLogIn;

delimiter ||
create trigger InsertLogIn
after insert on EmployeeContact
for each row begin 
	declare cid int; -- Just created variable named 'cid'
	declare zip char(5); 
    declare city varchar(45);
    
    set cid = NEW.cid;
    
    set city = (select ecity from Address 
				where eaid = LAST_INSERT_ID(eaid) -- most recent eaid insert
                group by eaid
                limit 1);
                
    set zip = (select ezip from Address 
				where eaid = LAST_INSERT_ID(eaid) -- most recent eaid insert
                group by eaid
                limit 1);
	
    
	if cid = 2 then 
	insert into EmpLogIn Values
	(NEW.eid, NEW.contact, CONCAT(city, zip));
    end if;
end
||
