use employees;

drop trigger if exists InsertPreventTrigger;
/*
delimiter ||
create trigger InsertPreventTrigger
before insert on Address
for each row begin
	declare dupAdd integer;
    
    select count(*) into dupAdd
    
		similar to a for loop:
		for(i = 0; i < array.length; ++i)
    
		from Address
        where 
			NEW.estreet = estreet and
            NEW.ecity = ecity and
            NEW.est = est and
            New.ezip = ezip;
		if(dupAdd > 0) then
			insert into ErrorAddLog (DBTable, DateTimeOfError, ErrorDescription)
            values("Address", NOW(), CONCAT("Duplicate Address: ", NEW.estreet, NEW.ecity, NEW.est, NEW.ezip));
        end if;
end ||
*/

drop trigger if exists stopAddInsert;

/*
delimiter ||
create trigger stopAddInsert
after insert on ErrorAddLog
for each row begin
	SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = 'Insert rejected, duplicate entry';
    
end ||
*/
