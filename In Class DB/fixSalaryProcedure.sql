use employees;

drop procedure if exists fixSalary;

delimiter ||
create procedure fixSalary()
begin
	declare eid2 int;
	declare pos_id2 int;
    declare h_range int;
    
    set eid2 = (select eid from HighSalary order by eid desc limit 1);
    set pos_id2 = (select pos_id from HighSalary where eid order by eid desc limit 1);
    set h_range = (select sal_range from jobsalary where sal_id = 2 and pos_id = pos_id2);
    
    insert into EmpHistory values(eid2, pos_id, CURDATE(), h_range, 'Incorrect salary entry', 121212);
end;

||
    
