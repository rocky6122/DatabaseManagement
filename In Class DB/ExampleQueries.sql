use employees;

select concat(eln, ', ', efn)
       as 'Employee',
       pos_name as 'Position',
       salary as 'Salary',
       sal_desc as 'Range'
from employee join emphistory on
	employee.eid = emphistory.eid
		join job on
			emphistory.pos_id = job.pos_id
		join jobsalary on
			job.pos_id = jobsalary.pos_id
		join salarytype on
			jobsalary.sal_id = salarytype.sal_id
order by eln, sal_range;



/*select concat(eln, ', ', efn)
       as 'Employee',
       pos_name as 'Position',
       salary as 'Salary'
from employee join emphistory on
	employee.eid = emphistory.eid
		join job on
			emphistory.pos_id = job.pos_id
order by eln;*/
	
       

/*select concat(eln, ', ', efn)
       as 'Employee Name',
       concat(estreet,' ', ecity,', ', est, ' ', ezip)
       as 'Address'
from employee join address on
    employee.eaid = address.eaid
where est = "VT";*/

/*select efn, eln, contact 
from employee join employeecontact on
	employee.eid = employeecontact.eid
	join contact on
		contact.cid = employeecontact.cid
		join address on
		employee.eaid = address.eaid
where est = "VT"
order by eln;*/