create database joins 
use joins

create table students(
roll_no int primary key,
student_name varchar(50),
email varchar(30),
)

INSERT INTO students(roll_no,student_name,email)
VALUES(1,'Hussain','hussainayub'),
(2,'ADEEL','adeelmayo'),
(3,'HUNZALA','hunzalatariq'),
(4,'ALI','ALIHAIDER')
;
INSERT INTO students(roll_no,student_name,email)
VALUES(06,'ALI HAIDER','alihaider');
INSERT INTO students(roll_no,student_name,email)
VALUES(07,'ALI AFZAL','aliafzal');
INSERT INTO students(roll_no,student_name,email)
VALUES(08,'IRTIZA','irtizamehmood');

select * from students

create table course(
roll_no int,
course_id int,
course_name varchar(50),
foreign key (roll_no) references students(roll_no)
)

INSERT INTO course(roll_no,course_id,course_name)
VALUES(1,101,'dsa'),
(2,102,'math'),
(3,103,'oop'),
(4,104,'Database')
;

select * from course

select s . student_name,c . roll_no,c . course_id,c . course_name 
from students s
inner join course c 
on s . roll_no = c . roll_no;

select s . student_name,c . roll_no,c . course_id,c . course_name 
from students s
left join course c 
on s . roll_no = c . roll_no

select s . student_name,c . roll_no,c . course_id,c . course_name 
from students s
right join course c 
on s . roll_no = c . roll_no

select s . student_name,c . roll_no,c . course_id,c . course_name 
from students s
Full join course c 
on s . roll_no = c . roll_no

select s.student_name ,c.course_id,c.course_name
from students s 
cross join course c ;

SELECT * FROM students
NATURAL JOIN course

alter table students add ManagerId int;
select *from students;
update students set ManagerId=1 where roll_no=3;
update students set ManagerId=4 where roll_no=2;
update students set ManagerId=5 where roll_no=1;

select s.first_name  from students a
join students b on s.roll_no=B.managerId


select
      s . student_name as students,
	  c . course_name as course
	  from students s
	  join student_name c
	  on s . course_id = c.student_id



