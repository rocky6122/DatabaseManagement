use employees;

delete from Address where eaid = 163;
delete from Address where eaid = 164; -- Want to amke sure the Address table
										-- is clear of these records

insert into Address values(163,"163 South Willard Street","Burlington","VT","05401");
insert into Employee values(163,"First","Name",163);
/*
When testing the trigger to prevent duplicate entries, you need to comment out
the two insert commands for EmployeeContact
*/
#insert into EmployeeContact values(163,2,"Firstname@neb.com");
#insert into EmployeeContact values(163,1,"802-865-6472");


insert into Address values(164,"164 South Willard Street","Burlington","VT","05401");
insert into Employee values(164,"Last","Name",164);
/*
When testing the trigger to prevent duplicate entries, you need to comment out
the two insert commands for EmployeeContact
*/

insert into EmployeeContact values(164,2,"Lastname@neb.com");
insert into EmployeeContact values(164,1,"802-865-6471");


select * from ErrorAddLog;
select * from Address where eaid = 163 or eaid = 164;
select * from Employee where eid = 163 or eid = 164;
select * from EmployeeContact where eid = 163 or eid = 164;
