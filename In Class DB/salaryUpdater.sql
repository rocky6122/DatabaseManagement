use employees;

select * from salarytype;

-- Determines the employees whose salary is below the range
select e.eid,pos_id,salary,
	sal_range,sal_desc, salary-sal_range as 'Variance'
from employee as e join emphistory as eh 
	on e.eid = eh.eid
	join job on job.pos_id = eh.pos_id
    join department as d
		on d.dept_id = job.dept_id 
	join jobsalary as js 
		on js.pos_id = job.pos_id 
	join salarytype st 
		on st.sal_id = js.sal_id 
where js.sal_id=1
	and salary<sal_range
;