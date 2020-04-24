use employees;
drop table if exists EmpLogIn;

create table if not exists EmpLogIn(
eid int not null, -- This is the PK and FK
euser varchar(255) not null,
epswd varchar(255) not null,
primary key(eid),
Constraint FK1_EmpLog
	Foreign Key(eid)
	References Employee(eid)
    On Delete cascade
    on update cascade)
Engine = InnoDB; -- When using triggers, use this engine


