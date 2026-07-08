use employeedb;
select * from EMPLOYEES;

create view employe 
as
select Name,Department, City from EMPLOYEES where City='Lahore';

select  * from EMPLOYEES where Name='Ali';

alter view employe
as
select Name,Department from EMPLOYEES ;
select  * from employe ;

drop view employe;

update EMPLOYEES set Department='SC'
where Name ='Ali';
select  * from employe;



