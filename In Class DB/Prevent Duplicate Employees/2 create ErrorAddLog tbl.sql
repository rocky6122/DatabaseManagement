use employees;
/*
A table that will hold potential dupicate address data
*/
drop table if exists ErrorAddLog;

create table if not exists ErrorAddLog(
errorID int auto_increment,
DBTable varchar(100),
DateTimeofError Datetime,
ErrorDescription varchar(255),
eaid int,
primary key(errorID)
)
Engine = InnoDB
-- create_dupErrortbl.sql