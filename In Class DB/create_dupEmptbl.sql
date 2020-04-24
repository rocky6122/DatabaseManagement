use employees;

drop table if exists ErrorAddLog;

create table if not exists ErrorAddLog(
errorID int auto_increment,
DBTable varchar(100),
DateTimeOfError datetime,
ErrorDescription varchar(255),
primary key (errorID))
Engine = InnoDB;
