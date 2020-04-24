/*
code to test the results of an employee insert where salary > high salary range
*/

use employees;

delete from Address where eaid = 165;

insert into Address values(165, '1000 Main Street', 'Burlington', 'VT', '05401');
insert into Employee values(165, 'No', 'Way', 165);
insert into employeeContact values(165, 2, 'Noway@neb.com');
insert into employeeContact values(165, 1, '111-111-1111');
insert into EmpHistory value(165, 2, '2020-04-09', 987654, 'Initial Comment', 111111);

select * FROM EmpHistory where eid = 165;
select * from HighSalary;

-- test_salary_trigger.sql