create table departments(
dept_no varchar(50),
dept_name varchar(50)
);

create table dept_emp(
	emp_no int,
	dept_no varchar(50)	
);

create table dept_manager(
	dept_no varchar(10),
	emp_no int
);

create table employees (
emp_no int,
emp_title_id varchar(50),
birth_date varchar(50),
	first_name varchar(50),
	last_name varchar(50),
	sex varchar (10),
	hire_date varchar(50)
);

create table saleries(
emp_no int,
salary int
);

create table titles (
title_id varchar(50),
title varchar(50)
);
