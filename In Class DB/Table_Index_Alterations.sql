use employees;

#modifying column
#ALTER TABLE jobsalary
#	modify sal_range int(7) not null

#deleting column
#ALTER TABLE department
#	DROP COLUMN dept_desc;

#adding column
#ALTER TABLE department
#	ADD COLUMN dept_desc VARCHAR(255) NOT NULL
#		DEFAULT 'Add Description Here';
#select * from department;

#update a value
#UPDATE department
#	SET dept_desc = 'Manages financial activity' WHERE dept_name = 'Accounting' ;
#SELECT * FROM department;

#Deletes all data from the department
#DELETE FROM department;

#Creating an index
CREATE INDEX idx_eln
	ON employee(eln ASC);