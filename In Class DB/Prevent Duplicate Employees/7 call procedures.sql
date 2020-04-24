use employees;


call cleanup_Address();
call cleanup_ErrorAddLog

/*
After running the code in this file, go back to the file
named 5 confirm prevent duplicate entry process.sql and rerun
that code. The select statement on the ErrorAddLog table should
return zero rows whereas the select statement for Address and
Employee should return 134 rows. The select statement for the
EmployeeContact should return 268 rows.
*/