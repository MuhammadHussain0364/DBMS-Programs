use Employeedb;
create table Employeees(
EmpID int,Name varchar(100),Age int,Department varchar(100),Salary int,City varchar(100),primary key(EmpID)
);
insert into Employeees(EmpID,Name,Age,Department,Salary,City)
values(1,'Adeel',19,'CS',20000,'Lahore'),
(2,'Hussain',19,'CS',30000,'Lahore'),
(3,'Hassnain',20,'IT',40000,'Lahore'),
(4,'Hunzala',21,'CS',20000,'Karachi'),
(5,'Bilal',18,'IT',10000,'Islamabad');
select *from Employeees;
select distinct City from Employeees;
select distinct Age from Employeees;
select distinct Age,City from Employeees;
select *from Employees where Department='IT';
select *from Employees where City='Karachi';
select *from Employees where Salary=40000;
select *from Employees where Department!='IT';
select *from Employees where City!='Karachi';
select *from Employees where Salary!=40000;
select *from Employees where Age>20;
select *from Employees where Salary>30000;
select *from Employees where EmpID>3;
select *from Employees where Age<30;
select *from Employees where Salary<40000;
select *from Employees where EmpID<3;
select *from Employees where Age>=20;
select *from Employees where Salary>=20000;
select *from Employees where EmpID>=2;
select *from Employees where Age<=30000;
select *from Employees where EmpID<=3;
select *from Employees where Salary<=40000;



create table Student(StudentID int,Name varchar(100),Age int,Gender varchar(100),Grade int,Marks int,City varchar(100),primary key(StudentID));
insert into Student(StudentID,Name,Age,Gender,Grade,Marks,City)
values(1,'Naveed',18,'Male',12,85,'New York'),
(2,'Irum',19,'Female',12,78,'Chicago'),
(3,'Kashif',17,'Male',11,92,'Dallas'),
(4,'Amir',16,'Male',10,88,'Boston'),
(5,'Asif',18,'Male',10,88,'Seattle'),
(6,'Amina',17,'Female',11,76,'Chicago'),
(7,'Kamran',16,'Male',10,80,'Dallas'),
(8,'Farwa',18,'Female',12,70,'New York'),
(9,'Komal',17,'Female',11,89,'Boston'),
(10,'Ayesha',16,'Female',10,95,'Seattle');
select *from Student;
select *from Student where Name='Amina';
select *from Student where City='New York';
select *from Student where Grade=12;
select *from Student where Marks!=90;
select *from Student where City!='Chicago';
select *from Student where Grade>10;
select *from Student where Marks>80;
select *from Student where StudentID%2=0;

select *from Student where StudentID%2!=0;
select *from Student where Marks<=80;
select *from Student where Marks>=60;
select *from Student where Grade<10;




select * from student;
select min(age) from student;
select max(age) from student;

select min(Marks) from student;
select min(grade) from student;

select min(Marks) from student where gender ='Female';
select min(age) from student where City ='New york';

select max(Marks) from student;
select max(age) from student;

select max(grade) from student;

select count (*) from student;
select count (*) from student where grade=12;

select count (*) from student where gender='Male';
select count (*) from student where Marks>80;

select count (distinct grade)  as distinctgrade from student;

select sum (marks)  as totalmarks from student;
select sum (marks) from student where grade=12;

select sum (marks) from student where gender='Female';

select avg(marks) from student;
select avg(marks) from student where grade = 12;

select avg(marks) from student where city = 'New york';

select avg(marks) from student where marks>80;
select avg(marks) from student where age < 18;

select grade,avg(marks) from student group by grade;
select grade,city,avg(marks) from student group by grade,city;

select gender,min(marks) from student group by gender;
select grade,min(marks) from student where gender='Male' group by grade;

select gender,max(marks) from student group by gender;
select grade,max(age) from student group by grade;

select grade,count(*) from student group by grade;
select marks,count(*) from student group by marks;

select city,sum(marks) from student group by city;
select grade,gender,sum(marks) from student group by grade,gender;

select city,min(marks) from student group by city having min(marks)<80;
select city,min(age) from student group by city having min(age)<80;

select grade,max(marks) from student group by grade having max(marks)>80;
select city,max(marks) from student group by city having max(marks)<90;



select min(marks) from student where age  between 16 and 18;
select city,min(marks) from student  where age in(17,18) group by city;
select city,min(marks) from student  where grade=10 group by city;
select city,max(marks) from student group by city;
select gender,max(marks) from student where gender='Male' and grade=12 group by gender ;

select marks,count(*) from student where marks between 80 and 90 group by marks;
select city,count(*) from student where marks < 75 group by city;
select grade,count(*) from student where grade < 80 group by grade;
select city,count(*) from student where name = 'j%'  group by city;
select gender,sum(marks) from student   group by gender;

select avg(marks) from student where marks<80;
select avg(marks) from student where city='Seattle';
select count(*) from student where age=17 and marks>80;
select count(*) from student where age=17 and marks>80;
select count(*) from student where marks>80 and grade = 12;
select gender,max(age) from student group by gender having max(age) < 22; 
select city,max(marks) from student group by city having max(marks) = 100;