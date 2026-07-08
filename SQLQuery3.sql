create database StudentDB;
use StudentDB;
create table Students(StudentID int primary key,
FullName varchar(100),
Department varchar(50),
Gender varchar(10),
DOB DATE,
EnrollmentYear int,
Marks int,
Grade varchar(2)
);
Insert into Students(StudentID,FullName,Department,Gender,DOB,EnrollmentYear,Marks,Grade)
Values(1,'Damil','CS','Male','2006-03-16',2020,18,'A'),
(2,'Hussain','CS','Male','2005-08-10',2021,18,'A'),
(3,'Hunzala','IT','Male','2004-02-01',2022,16,'B'),
(4,'Noor','SE','Female','2002-03-16',2023,14,'C'),
(5,'Ali','IT','Male','2006-03-16',2024,16,'B'),
(6,'Razia','Cyber','Female','2002-01-16',2025,12,'D');
select * from Students;

select FullName,Department from Students;

select * from Students where Department in('CS','IT');

select * from Students where FullName like'A%';

select * from Students where EnrollmentYear between 2020 and 2022;

select distinct (Department)from Students;

select * from students where Marks>80 and Department = 'CS';

select Department,count(*)as totalstudents from Students group by Department;

select Department,max(Marks)as maxmarks from Students group by Department;

select min(Marks) as minmarks from Students where gender ='Female';

select Department,avg(Marks)as avgmarks from Students group by Department order by avg(Marks) desc;

select upper(FullName) from Students;

select Year(DOB) as dateofbirth from Students;

select len(FullName) as length from Students;

select DATEDIFF(Year,DOB,getdate())as age from Students;

select round (Marks,-1) from students;

select * from Students where Marks !=100;

select * from Students where Department = 'IT' or Marks >75;

select * from Students where gender = 'Male' and Marks <50;

create procedure Toppers(@dept_name varchar(100))
as
select * from Students where Department =@dept_name and Marks >85;
go
exec Toppers @dept_name = 'CS';

create procedure count 
as
select count(*) from Students;
go
exec count;

create view view_high
as
select StudentID,FullName,Department,Marks from Students where Marks >90;
select * from view_high;

create view view_rectadmission
as
select * from Students where EnrollmentYear>=(Year (getdate())-2);
select * from view_rectadmission;



