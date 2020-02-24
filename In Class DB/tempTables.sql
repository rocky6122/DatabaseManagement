use employees;

drop temporary table if exists tempadd;
create temporary table tempadd(
eid int,
efn varchar(255),
eln varchar(255),
estreet varchar(255),
ecity varchar(255),
est varchar(255),
ezip varchar(255),
contact varchar(255),
count int
);

drop temporary table if exists tempmail;
create temporary table tempmail(
eid int,
efn varchar(255),
eln varchar(255),
estreet varchar(255),
ecity varchar(255),
est varchar(255),
ezip varchar(255),
contact varchar(255),
count int
);

insert into tempadd(
select employee.eid, efn, eln, estreet, ecity, est, ezip, contact, count(*)
from employee join address on 
	employee.eaid = address.eaid
    join employeecontact on
		employee.eid = employeecontact.eid
        join contact on
			employeecontact.cid = contact.cid
where contact.cid = 2
group by estreet, ecity, est, ezip
#having looks at rows and inspects the column from the argument
having count(*) > 1
order by employee.eln
);

insert into tempmail(
select employee.eid, efn, eln, estreet, ecity, est, ezip, contact, count(*)
from employee join address on 
	employee.eaid = address.eaid
    join employeecontact on
		employee.eid = employeecontact.eid
        join contact on
			employeecontact.cid = contact.cid
where contact.cid = 2
group by contact
#having looks at rows and inspects the column from the argument
having count(*) > 1
order by employee.eln
);

select * from tempadd;

select tempadd.eid, tempmail.eid 
from tempadd join tempmail on
	tempadd.eid = tempmail.eid;

