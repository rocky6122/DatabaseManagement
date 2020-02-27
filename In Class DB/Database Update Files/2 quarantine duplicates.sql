use employees;

drop temporary table if exists tempadd;
create temporary table tempadd(
eid int not null primary key,
efn varchar(255) not null,
eln varchar(255) not null,
estreet varchar(255) not null,
ecity varchar(255) not null,
est varchar(255) not null,
ezip varchar(255) not null,
eaid int not null,
contact varchar(255) not null,
addcount int
);

insert into tempadd(
select e.eid,efn,eln,estreet,ecity,est,ezip,a.eaid,
contact,count(*)
from employee as e join address as a
	on e.eaid=a.eaid join employeecontact as ec
    on e.eid = ec.eid and cid=2
group by concat(estreet,ecity,est,ezip) #This comes before the order by
having count(*)>1
order by e.eid
);

select * from tempadd;

drop temporary table if exists tempmail;
create temporary table tempmail(
eid int not null primary key,
efn varchar(255) not null,
eln varchar(255) not null,
estreet varchar(255) not null,
ecity varchar(255) not null,
est varchar(255) not null,
ezip varchar(255) not null,
eaid int not null,
contact varchar(255) not null,
addcount int
);

insert into tempmail(
select e.eid,efn,eln,estreet,ecity,est,ezip,a.eaid,
	contact, count(*)
from employee as e join address as a
	on e.eaid=a.eaid join employeecontact as ec
    on e.eid = ec.eid and cid=2
group by contact #This comes before the order by
having count(*)>1
order by eid
);

select * from tempmail;








