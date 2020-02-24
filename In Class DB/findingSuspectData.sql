use employees;

select concat(efn, ' ', eln) as 'Employee',
	concat(estreet, ' ', ecity, ' ', est, ' ', ezip) as 'Address', contact, count(*)
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
order by employee.eln;


select concat(efn, ' ', eln) as 'Employee',
	concat(estreet, ' ', ecity, ' ', est, ' ', ezip) as 'Address', contact, count(*)
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
order by employee.eln;