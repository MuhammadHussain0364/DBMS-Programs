create database testdb;
create database book;
drop database testdb;
use testdb;
create table person(
personid int,
lastname varchar(255),
firstname varchar(255),
address varchar(255),
city varchar(255),
primary key(personid)
);
create table per(
personid int,
lastname varchar(255),
firstname varchar(255),
address varchar(255),
city varchar(255),
primary key(personid)
);
drop table per;
insert into person(personid,lastname,firstname,address,city)
values(2,'faisal','zoya','dha','lahore'),
(3,'akram','ali','askari','lahore'),
(4,'ali','omer','karachi','lahore');

select * from person;
select firstname,lastname from person;