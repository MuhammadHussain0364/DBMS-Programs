create database joining;
use joining;
create table departments(dept_id int primary key,dept_name varchar(50))
insert into departments values(1,'HR'),(2,'IT'),(3,'Finance'),(4,'HR'),(5,'IT'),(6,'Finanace');
select *from departments;

create table employee(emp_id int primary key,emp_name varchar(100),dept_id int,foreign key(dept_id) 
references departments (dept_id));
insert into employee values(101,'Alice',1),(102,'Bob',2),(103,'Charlie',3);
select *from employee;

select employee.emp_id,
employee.emp_name,
departments.dept_name,departments.dept_id from employee
inner join departments on employee.dept_id=departments.dept_id;

select emp_name,dept_name from employee
inner join departments on employee.dept_id= departments.dept_id
where emp_name like 'A%';

select emp_id,emp_name,dept_name dept_id from departments
left join employee on departments.dept_id=employee.dept_id;

select emp_id,emp_name,dept_name 
from departments left join employee on departments.dept_id=employee.dept_id;

select emp_name,dept_name from employee
right join departments on employee.dept_id=departments.dept_id;

select *from employee full outer join departments on employee.dept_id=departments.dept_id;

select emp_name,dept_name from employee full outer join departments on employee.dept_id=departments.dept_id;

use joining;
select * from departments cross join employee;
select * from employee;

use Employeedb;
select * from Employees;
select max(Salary)from Employees where Salary<(select max(Salary) from Employees);
select max(Salary)from Employees where Salary<7000;