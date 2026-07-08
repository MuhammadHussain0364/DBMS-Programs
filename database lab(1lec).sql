create database student;
use student;
create  table information(regno int ,name varchar(100),fathername varchar(100),degree varchar(100),primary key(regno));
insert into information(regno ,name ,fathername ,degree )
values(1,'hussain','ayub','ics'),
(2,'haroon','amin','ics'),
(3,'hunzala','tariq','ics'),
(4,'zahid','amin','ics'),
(5,'omer','rafiq','ics'),
(6,'hussain','ayub','ics'),
(7,'hussain','ayub','ics'),
(8,'raza','hafiq','ics'),
(9,'azeem','mustafa','ics'),
(10,'tanveer','nikko','ics');
select*from information;
select name, fathername from information;

