CREATE DATABASE processure;
USE processure;


CREATE TABLE Students (
roll_no INT PRIMARY KEY,
student_name VARCHAR(50),
marks INT,
age INT,
city VARCHAR(50),
email VARCHAR(30)
);

INSERT INTO Students(roll_no,student_name,marks,age,city,email)
VALUES
(1,'Ali',85,20,'Lahore','ali@gmail.com'),
(2,'Ahmed',78,21,'Karachi','ahmed@gmail.com'),
(3,'Sara',90,19,'Islamabad','sara@gmail.com'),
(4,'Ayesha',88,22,'Faisalabad','ayesha@gmail.com'),
(5,'Bilal',75,20,'Multan','bilal@gmail.com'),
(6,'Hassan',82,21,'Lahore','hassan@gmail.com'),
(7,'Fatima',91,20,'Karachi','fatima@gmail.com'),
(8,'Usman',69,23,'Peshawar','usman@gmail.com'),
(9,'Zain',74,22,'Quetta','zain@gmail.com'),
(10,'Hina',87,19,'Islamabad','hina@gmail.com'),
(11,'Hamza',80,21,'Lahore','hamza@gmail.com'),
(12,'Mariam',92,20,'Karachi','mariam@gmail.com'),
(13,'Saad',76,22,'Multan','saad@gmail.com'),
(14,'Dua',89,19,'Islamabad','dua@gmail.com'),
(15,'Talha',73,23,'Faisalabad','talha@gmail.com');

SELECT * FROM Students;


CREATE TABLE Courses(
course_id INT PRIMARY KEY,
roll_no INT,
course_name VARCHAR(50)
);

INSERT INTO Courses
VALUES
(1,1,'Database'),
(2,2,'Programming'),
(3,3,'Networking'),
(4,4,'AI'),
(5,5,'Web Development');


CREATE PROCEDURE ShowStudents
AS
BEGIN
SELECT * FROM Students;
END;

EXEC ShowStudents;


CREATE PROCEDURE InsertStudent
@roll_no INT,
@student_name VARCHAR(50),
@marks INT,
@age INT,
@city VARCHAR(50),
@email VARCHAR(30)
AS
BEGIN
INSERT INTO Students
VALUES(@roll_no,@student_name,@marks,@age,@city,@email);
END;

exec InsertStudent 16,'Asad',81,21,'Lahore','asad@gmail.com';


CREATE PROCEDURE UpdateStudent
@roll_no INT,
@marks INT
AS
BEGIN
UPDATE Students
SET marks = @marks
WHERE roll_no = @roll_no;
END;

EXEC UpdateStudent 1,95;


CREATE PROCEDURE DeleteStudent
@roll_no INT
AS
BEGIN
DELETE FROM Students
WHERE roll_no = @roll_no;
END;

EXEC DeleteStudent 16;


CREATE PROCEDURE ShowStudentCourses
AS
BEGIN
SELECT Students.student_name, Students.city, Courses.course_name
FROM Students
INNER JOIN Courses
ON Students.roll_no = Courses.roll_no;
END;

EXEC ShowStudentCourses;


CREATE PROCEDURE ShowLeftJoin
AS
BEGIN
SELECT Students.roll_no, Students.student_name, Students.city, Courses.course_name
FROM Students
LEFT JOIN Courses
ON Students.roll_no = Courses.roll_no;
END;

EXEC ShowLeftJoin;


CREATE PROCEDURE ShowFullJoin
AS
BEGIN
SELECT Students.roll_no, Students.student_name, Students.city, Courses.course_name
FROM Students
FULL JOIN Courses
ON Students.roll_no = Courses.roll_no;
END;

EXEC ShowFullJoin;



