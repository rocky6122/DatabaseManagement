/* Use this file to reset the database */
use employees;

delete from Address where eaid = 163;
delete from Address where eaid = 164;
delete from ErrorAddLog
