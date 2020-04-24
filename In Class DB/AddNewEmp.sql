use employees;

delete from Address where eaid = 163;
delete from Address where eaid = 164;

insert into Address values(163, "163 South Willard Street", "Burlington", "VT", "05401");
insert into Employee values(163, "First", "Name", 163);
insert into employeecontact values(163, 2, "Firstname@neb.com");
insert into employeecontact values(163, 1, "802-865-6470");

insert into Address values(164, "10 Wild Street", "Portland", "ME", "02111");
insert into Employee values(164, "Last", "Name", 164);
insert into employeecontact values(164, 2, "Lastname@neb.com");
insert into employeecontact values(164, 1, "304-852-9754");

select * from ErrorAddLog;
select * from Address where eaid = 163 or eaid = 164;
select * from Employee where eaid = 163 or eaid = 164;
select * from EmployeeContact where eid = 163 or eid = 164;