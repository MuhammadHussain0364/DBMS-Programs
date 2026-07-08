CREATE DATABASE Hussain;

USE Hussain;

CREATE TABLE STUDENTS(
ROLLNO INT PRIMARY KEY,
NAME VARCHAR(100),
EMAIL VARCHAR(100),
)

INSERT INTO STUDENTS(ROLLNO,NAME,EMAIL)
VALUES(1,'Hussain','hussainayub'),
(2,'ADEEL','adeelmayo'),
(3,'HUNZALA','hunzalatariq');

select * from STUDENTS;

ALTER TABLE STUDENTS
add age varchar(100);

truncate table students;

exec sp_rename 'students' , 'RECORD';

select * from RECORD;


INSERT INTO RECORD(ROLLNO,NAME,EMAIL,age)
VALUES(1,'HAROON','haroonameen','20'),
(2,'ADEEL','adeelmayo','19'),
(4,'HUNZALA','hunzalatariq','21'),
(5,'REHMAN','rehman','21'),
(6,'HUSSAIN','hussain','21'),
(7,'ALI','ali','21'),
(8,'USMAN','usmansadiq','21'),
(9,'HAIDER','alihaider','21'),
(10,'SHAHZAIB','sahzaibjoiya','21'),
(11,'NAFAY','abdulnafay','21'),
(12,'HANAN','hanan220','21'),
(13,'SAAD','saadaslam','21'),
(14,'AHSAN','ahsanshahid','21'),
(15,'ZOHAIB','zohaibnulla','21'),
(16,'BILAL','bilalasghar','21'),
(17,'IRTIZA','irtizamehmood','21'),
(18,'REHAN','rehanhaider','21'),
(19,'AFZAL','aliafzal','21'),
(20,'AMEEN','ameenibrahim','21');

SELECT * FROM RECORD;

UPDATE RECORD SET AGE = '23' WHERE ROLLNO = 8;

UPDATE RECORD SET AGE = '18' WHERE ROLLNO = 10;

UPDATE RECORD SET AGE = '19' WHERE ROLLNO = 14;

UPDATE RECORD SET AGE = '22' WHERE ROLLNO = 12;

UPDATE RECORD SET AGE = '19' WHERE ROLLNO = 19;

SELECT * FROM RECORD;

DELETE FROM RECORD WHERE ROLLNO = 7;

DELETE FROM RECORD WHERE ROLLNO = 9;

DELETE FROM RECORD WHERE ROLLNO = 13;

DELETE FROM RECORD WHERE ROLLNO = 17;

DELETE FROM RECORD WHERE ROLLNO = 20;

DELETE FROM RECORD WHERE ROLLNO = 16;

SELECT * FROM RECORD;

select substring(Name,2,3) from RECORD where ROLLNO = 15

select * from RECORD;



select LEN('Lahore Garrison University') AS StringLength;

select UPPER(NAME) from RECORD where ROLLNO = 8;

select UPPER(NAME) from RECORD where ROLLNO = 4;

select LOWER(NAME) from RECORD where ROLLNO = 11;

select LOWER(NAME) from RECORD where ROLLNO = 15;

select SUBSTRING(NAME,1,4) from RECORD where ROLLNO = 10;

select SUBSTRING(NAME,1,3) from RECORD where ROLLNO = 4;

select * from RECORD;

select trim(' SQL Derver ') as trimmedstring;

select trim(LEADING '' FROM ' HELLO');

select trim(Trailing '' FROM 'HELLO ');

select ABS(-19.7) as absolutevalue;

select round(123.345, 2) as roundnumber;

select ceiling(10.2) as ceilingvalue;

select floor  (10.1) as floorvalue;

select getdate() as currentdatetime;

select datediff(day,'2024-01-01',getdate()) as daydifference;

select datediff(month,'2024-01-01',getdate()) as daydifference;

select datediff(year,'2024-01-01',getdate()) as daydifference;

select dateadd(day,7,getdate()) as newdate;

select format(getdate(), 'MM-dd-yyyy') AS formatteddate;

select * from RECORD;

select cast  ('123' as int)

select cast  (123 as varchar)

select cast  (getdate() as varchar)

select convert(varchar,getdate(),112);
select convert(varchar,getdate(),108);
select convert(varchar,getdate(),120);

select 
     case
         when ROLLNO >= 15 then 'A'
		 when ROLLNO >= 10 then 'B'
		 when ROLLNO >= 5 then 'C'
		 else 'F'
     end
from RECORD;

select nullif(20,20) as nullresult;
select nullif(20,30) as notnull;

select concat(NAME,age) from RECORD;

