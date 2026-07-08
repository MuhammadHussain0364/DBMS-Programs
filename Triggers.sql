 
create database triger;
use triger;

create table students(StudentID int primary key,
Studentname varchar(100),
Marks int
);
create table Studentlog(StudentID int,
Studentname varchar (100),
Marks int,
ActionType varchar(50),
Actiontime Datetime
);
create trigger insert_student
on students
after insert
AS
begin
insert into Studentlog(StudentID ,
Studentname ,
Marks ,
ActionType ,
Actiontime )
select StudentID,Studentname,Marks,'Insert',GetDate() from Inserted;
End

Insert into students(StudentID,
Studentname ,
Marks )
values(1,'Amit',88);
Insert into students(StudentID,
Studentname ,
Marks )
values(2,'Asif',98);

select * from students;
select * from Studentlog;

create trigger update_student
on students
after update
AS
begin
insert into Studentlog(StudentID ,
Studentname ,
Marks ,
ActionType ,
Actiontime )
select StudentID,Studentname,Marks,'update',GetDate() from Inserted;
End

update students
set Studentname ='Fahad'
where StudentID=2;
select * from students;
select * from Studentlog;

update students
set Marks =94
where StudentID=1;
select * from students;
select * from Studentlog;


create trigger Deleted_student
on students
after Delete
AS
begin
insert into Studentlog(StudentID ,
Studentname ,
Marks ,
ActionType ,
Actiontime )
select StudentID,Studentname,Marks,'Delete',GetDate() from Deleted;
End

delete from students
where StudentID=2;
select * from students;
select * from Studentlog;