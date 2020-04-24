use employees;

drop trigger if exists employees.InsertPreventTrigger;
drop trigger if exists employees.stopAddInsert;
/
delimiter //
create trigger InsertPreventTrigger
before insert on Address
for each row begin
	declare dupAdd integer;
    
    select count(*) into dupAdd
		from Address
        where
			NEW.estreet = estreet and
            NEW.ecity = ecity and
            NEW.est = est and
            NEW.ezip = ezip;
		if(dupAdd>0) then
        insert into ErrorAddLog (DBTable, DateTimeofError, ErrorDescription,eaid)
        values("Address",NOW(),concat("Duplicate Address: ",NEW.estreet,NEW.ecity,
        NEW.est,NEW.ezip),NEW.eaid);
               
        end if;
	
end //

delimiter ||
create trigger stopAddInsert
after insert on Employee
for each row begin
	declare id integer;
    declare errorid integer;
    
    set id = (select max(eaid) from Address limit 1);
    set errorid = (select max(eaid) from ErrorAddLog limit 1);
    
    delete from Address where eaid = errorid;
end ||

    
