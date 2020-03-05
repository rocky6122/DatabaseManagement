use employees;

drop table if exists HighSalary;
CREATE TABLE IF NOT EXISTS HighSalary(
  eid INT,
  pos_id INT,
  start_date DATE default '0000-00-00',
  salary INT(7),
  comments VARCHAR(45),
  status_id INT)
;

insert into HighSalary (eid,pos_id)(
select e.eid,eh.pos_id
from employee as e join emphistory as eh 
	on e.eid = eh.eid
	join job on job.pos_id = eh.pos_id
    join jobsalary as js 
		on js.pos_id = job.pos_id 
	join salarytype st 
		on st.sal_id = js.sal_id 
where js.sal_id=2
	and salary>sal_range
);

update HighSalary
set start_date = CURDATE(),
	comments = "Someone screwed up",
	status_id=121212
;


/*
This step will now correct the low salaries in the LowSalary table
*/
UPDATE HighSalary
SET salary = (
	SELECT eh.salary+(js.sal_range-eh.salary)-1 FROM EmpHistory as eh 
		join Job on eh.pos_id = Job.pos_id
        join JobSalary as js on Job.pos_id = js.pos_id
	WHERE sal_id=2 and salary>sal_range and eh.eid =HighSalary.eid
	);

-- Confirm the table is fully updated
select * from HighSalary;

-- Now insert the data from the LowSalary Table into the EmpHistry table
insert into EmpHistory(
select * from HighSalary
);

-- Now all low salaried employees hare all set
select * from EmpHistory;