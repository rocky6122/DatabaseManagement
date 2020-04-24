use employees;
drop table if exists EmpLogIn;

create table if not exists EmpLogIn(
eid int not null,
euser varchar(255) not null,
epswd varchar(255) not null,
primary key(eid),
Constraint FK1_EmpLog
	Foreign Key (eid)
    References Employee(eid)
    On Delete Cascade
    On Update Cascade)
Engine = InnoDB