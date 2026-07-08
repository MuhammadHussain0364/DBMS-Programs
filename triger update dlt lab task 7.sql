USE employeedb

select * from EMPLOYEES

create table audits
(
id int identity(1,1)primary key,
message varchar(1000)
)
select * from audits

create trigger updee
on EMPLOYEES
after update
as begin
insert into audits 
select
        'Name of employee is update along with id' + cast(EmpID as varchar(50)) +
		'New name is' + Name + 'at' + cast(getdate() as varchar(50))
		from inserted
		end
update EMPLOYEES set Name = 'Ayesha' where EmpID = 5 
select * from EMPLOYEES

create trigger dele
on EMPLOYEES
after delete
as begin
insert into audits
select
        'Name of employee is delete along with id' + cast(EmpID as varchar(50)) +
		'New name is' + Name + 'at' + cast(getdate() as varchar(50))
		from inserted
		end

delete from EMPLOYEES where EmpID = 2
select * from EMPLOYEES

create trigger ins
 on EMPLOYEES
 after insert
 as
 begin
  insert into audits
  select 
  'new employee with id = ' + cast(EmpID as varchar(50)) +    
  ' FirstName = ' + cast(Name as varchar (50))+   
  'Department =' + cast (Department as varchar(50))+
  'is added at = ' + cast(getdate() as varchar (50)) 
  from inserted;
  end;
  insert into EMPLOYEES values(2,'Adeel',55,'SC',30000,'Isl','AdeelMeo')
  select * from EMPLOYEES
  select * from audits
