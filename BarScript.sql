create database if not exists relational_algebra2;

use relational_algebra2;

create table if not exists bars(
bar varchar(255),
beer varchar(255),
price decimal(3,2)
);


insert into bars values("Joe's", 'Bud', 2.00);
insert into bars values("Joe's", 'Miller', 2.75);
insert into bars values("Sue's", 'Bud', 2.00);
insert into bars values("Sue's", "Coor's", 4.00);
insert into bars(bar, price) values("My Bar", 9.00);

select beer FROM bars where bar = "Joe's";

/*proj bar FROM bar where beer = 'Bud';*/