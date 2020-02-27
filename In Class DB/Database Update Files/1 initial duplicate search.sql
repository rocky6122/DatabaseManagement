use employees;

select e.eid,efn,eln,concat(estreet,' ',ecity,' ',est,' ',ezip) 
	as 'Address', contact, count(*) as 'Duplicates'
from employee as e join address as a
	on e.eaid=a.eaid join employeecontact as ec
    on e.eid = ec.eid and cid=2
group by contact #This comes before the order by
having duplicates>1
order by eln,contact;

select e.eid,efn,eln,concat(estreet,' ',ecity,' ',est,' ',ezip) 
	as 'Address', contact, count(*) as 'Duplicates'
from employee as e join address as a
	on e.eaid=a.eaid join employeecontact as ec
    on e.eid = ec.eid and cid=2
group by address #This comes before the order by
having duplicates>1
order by eln,address











