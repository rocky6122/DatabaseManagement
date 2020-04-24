use employees;

/*
Trigger to manage the adjustment of employee salaries. If the employee
salary exceeds the upper range, the trigger must adjust the salary so it
equals the upper range value. If the employee salary is below the lower
range for the position, adjust it so that the salary equals the lower range
value + $1
*/

/*
Data Requirements:
	salary
	High Range salary for position: use 'sal_range' for amount sal_id = 2
    Low Range salary for position: use 'sal_range' for amount  sal_id = 1
*/

drop trigger if exists adjSalary;

delimiter ||
create trigger adjSalary
before insert on EmpHistory
for each row begin
    declare sal int;
    declare adj_salary int;
    
    set sal = (select sal_range from jobsalary where sal_id = 2 and pos_id = NEW.pos_id);
    
    if(NEW.salary > sal) then
    insert into highsalary values(NEW.eid, NEW.pos_id, NEW.start_date, NEW.salary, NEW.comments, NEW.status_id);
	end if;
end ||