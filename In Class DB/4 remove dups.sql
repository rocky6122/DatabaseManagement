use employees;

/*
delete from realdups
where eid = 20 or eid = 34 or eid = 35 or eid = 26;

select * from realdups;
*/

delete from address
 where eaid in
 (select eaid from realdups);
 
 select * from employee;
 select * from address;
 select * from emphistory;
 select * from employeecontact;
 