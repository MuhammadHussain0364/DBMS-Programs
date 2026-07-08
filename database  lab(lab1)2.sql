create database employeedb;
use employeedb;
create table department(departmentid int,departmentname varchar(100),location varchar(100),primary key(departmentid));

insert into department(departmentid ,departmentname,location )
values(1,'computer','lahore'),
(2,'urdu','lahore'),
(3,'english','lahore'),
(4,'math','lahore'),
(5,'physics','lahore'),
(6,'isl','lahore'),
(7,'history','lahore'),
(8,'economics','lahore'),
(9,'urdu2','lahore'),
(10,'com','karachi');
select*from department;