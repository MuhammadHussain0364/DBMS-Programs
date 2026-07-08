use employeedb;

select * from EMPLOYEES;

Create Procedure selectall 
as
select * from EMPLOYEES
go;
exec selectall;

create procedure specific 
as
select Name,Department from EMPLOYEES
go;
exec specific;

create procedure maximumm
as
select max(Salary) as maximum from EMPLOYEES 
go;
exec maximumm;

create procedure counts
as
select count(*) as rows  from EMPLOYEES
Go;
exec counts;

create procedure P(@C varchar(50))
as
select * from EMPLOYEES where  City =@C;
go
exec P @C='Lahore';

create procedure multiple(@C varchar(50),@D varchar(40))
as
select * from EMPLOYEES where City=@C and Department=@D;
go
exec multiple @C='Lahore',@D='CS';

create procedure insertrecord 
as
insert into EMPLOYEES(EmpID,Name,Age,Department,Salary,City)
values(10,'Kamran',28,'CS',98000,'MULTAN');
go
exec insertrecord;
select * from EMPLOYEES;

create procedure insertparameters
(@EmpID int, @Name varchar(50),@Age int,@Department varchar(50),@Salary int,@City varchar (50))
as
insert into EMPLOYEES(EmpID,Name,Age,Department,Salary,City)
values(@EmpID,@Name,@Age,@Department,@Salary,@City);
go
exec insertparameters
@EmpID=20,
@Name=husain,
@Age=20,
@Department='CS',
@Salary=200000,
@City='Lahore';
select * from EMPLOYEES;

Create procedure deleterecord (@ID int)
as
delete from EMPLOYEES where EmpID=@ID;
go
exec deleterecord @ID=20;
select * from EMPLOYEES;

create procedure updaterecord (@EmpID int,@Name varchar(50))
as
update EMPLOYEES set Name=@Name where EmpID =@EmpID;
go

exec updaterecord @EmpID =1,@Name='Ali';
select * from EMPLOYEES;

