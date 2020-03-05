use employees;

/*
Create a new, disjointed (aka unrelated) table to hold the required
data to help correct salaries below the low range
*/
drop table if exists LowSalary;
CREATE TABLE IF NOT EXISTS LowSalary(
  eid INT,
  pos_id INT,
  start_date DATE default '0000-00-00',
  salary INT(7),
  comments VARCHAR(45),
  status_id INT)
;

/*
The first step is to get employee data about those employees who
are under paid into the LowSalary table. The step is to get the 
employee id and the position id of those employees who need the 
salary adjustment
*/
insert into LowSalary (eid,pos_id)(
select e.eid,eh.pos_id
from employee as e join emphistory as eh 
	on e.eid = eh.eid
	join job on job.pos_id = eh.pos_id
    join jobsalary as js 
		on js.pos_id = job.pos_id 
	join salarytype st 
		on st.sal_id = js.sal_id 
where js.sal_id=1
	and salary<sal_range
);

/*
The ssue with this entire porcess is that new data, the comments,
must also get ncluded. Trying to inser that data in the query
above can be tricky so at this step an update on the comments
field gets the data into this field
*/
update LowSalary
set start_date = CURDATE(),
	comments = "Someone screwed up",
	status_id=121212
;


/*
This step will now correct the low salaries in the LowSalary table
*/
UPDATE LowSalary

SET salary = (
	SELECT eh.salary+(js.sal_range-eh.salary) FROM EmpHistory as eh 
		join Job on eh.pos_id = Job.pos_id
        join JobSalary as js on Job.pos_id = js.pos_id
	WHERE sal_id=1 and salary<sal_range and eh.eid =LowSalary.eid
	);
    
-- Confirm the table is fully updated
select * from LowSalary;

-- Now insert the data from the LowSalary Table into the EmpHistry table
insert into EmpHistory(
select * from LowSalary
);

-- Now all low salaried employees hare all set
select * from EmpHistory