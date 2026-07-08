create database student;
use student;
create  table data(StudentID int ,name varchar(100),Age int,Gender varchar(100),Grade int,Marks int,City varchar(100),primary key(StudentID));
insert into data(StudentID ,Name ,Age ,Gender,Grade,Marks,City )
values(1,'Amina',18,'Female',12,85,'New York'),
(2,'Amir',19,'Male',12,78,'Chicago'),
(3,'Naveed',17,'Male',11,92,'Dallas'),
(4,'Kashif',16,'Male',10,88,'Boston'),
(5,'Aimen',18,'Female',12,90,'Seattle'),
(6,'Nadeem',17,'Male',11,76,'Chicago'),
(7,'Sehrish',16,'Female',10,80,'Dallas'),
(8,'Zain',18,'Male',12,70,'New York'),
(9,'Aneela',17,'Female',11,89,'Boston'),
(10,'Talha',16,'Male',10,95,'Seattle');
select*from data;
select *from data where grade=12 and marks>80;

select *from data where gender='Female' and age=18;

select *from data where grade=10 and (Age=16 or marks>85);

select *from data where grade=11 or city='Chicago';

select *from data where gender='Female' or marks<80;

select *from data where grade=10 or grade=12;

select *from data where not grade=12;
select *from data where  grade!=12;

select *from data where not city ='New York';
select *from data where  city! ='New York';

select *from data where not gender ='Male';

select *from data where age between 16 and 18;

select *from data where name between 'a' and 'd';

select *from data where age between 16 and 18;

select *from data where marks between 80 and 90;

select *from data where name like 'a%';

select *from data where name like '%e';

select *from data where name like 'j%k';

select *from data where name like 'a%a';

select *from data where name like '%ar%';

select *from data where name like '%ar%';
select *from data where name like '%in%';

select *from data where grade in (10,11,12);

select *from data where city in ('New York','Chicago');

select *from data where marks in (76,85,90);
select *from data where marks = 76 or marks = 85 or marks = 90;

select *from data where grade not in (12);

select *from data where city not in ('Dallas','Seattle');

select *from data where name not in ('Alice','Emma','Henry');

select *from data where name not in ('Zain','Amir','Aimen');

select *from data where age =17 and marks <80;

select *from data where name like 'a%' and marks >85;

select *from data where marks>85 and city in('New York' , 'Chicago');

select *from data where name like 'g%y';

select *from data where city ='New York' or marks <70;

select *from data where name not like 'h';

select *from data where  not age =16 and not grade =10;

select *from data where name between 'a' and 'c'; 
select *from data where name like 'a%' or name like 'b%' or name like 'c%'; 

select *from data where age between 16 and 18 and marks>85; 

select *from data where grade in(11,12) and marks between 70 and 80; 

select *from data where marks between 80  and 90 and name like'e%';

select *from data where name between 'a' and 'f'and marks<90; 