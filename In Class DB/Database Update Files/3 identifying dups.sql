use employees;

drop temporary table if exists realdups;
create temporary table if not exists realdups(
eid int not null primary key,
efn varchar(255) not null,
eln varchar(255) not null,
estreet varchar(255) not null,
ecity varchar(255) not null,
est varchar(255) not null,
ezip varchar(255) not null,
eaid int not null,
contact varchar(255) not null
);

insert into realdups(
select tm.eid,tm.efn,tm.eln,ta.estreet,ta.ecity,ta.est,
	ta.ezip,ta.eaid,tm.contact
from tempadd ta join tempmail tm on
	tm.eid = ta.eid
where tm.eaid = ta.eaid 
order by ta.eid
);

select * from realdups;


select e.eid,e.efn,e.eln,a.estreet,a.ecity,a.est,a.ezip,a.eaid, ec.contact,pos_name,salary
from employee as e right join realdups as rd
	on e.efn = rd.efn join address as a on rd.eaid = a.eaid
		join employeecontact as ec on ec.eid = e.eid
			join emphistory as eh on e.eid=eh.eid
				join job on job.pos_id=eh.pos_id
where e.efn = rd.efn and
		e.eln = rd.eln and
			a.estreet = rd.estreet and
				a.ecity = rd.ecity and
					a.est = rd.est and
						a.ezip = rd.ezip and
							ec.contact = rd.contact and
								a.eaid = rd.eaid
order by eln,estreet;

select e.eid,e.efn,e.eln,a.estreet,a.ecity,a.est,a.ezip,a.eaid, 
	ec.contact,pos_name,salary, count(*)
from employee as e right join realdups as rd
	on e.efn = rd.efn join address as a on rd.eaid = a.eaid
		join employeecontact as ec on ec.eid = e.eid
			join emphistory as eh on e.eid=eh.eid
				join job on job.pos_id=eh.pos_id
where e.efn = rd.efn and
		e.eln = rd.eln and
			a.estreet = rd.estreet and
				a.ecity = rd.ecity and
					a.est = rd.est and
						a.ezip = rd.ezip and
							ec.contact = rd.contact and
								a.eaid = rd.eaid
group by a.estreet
having count(*)<2
order by eln,estreet