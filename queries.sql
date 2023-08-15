-- List the employee number, last name, first name, sex, and salary of each employee.

SELECT employees.emp_no as "Employee Number",
employees.last_name, 
employees.first_name, 
employees.sex, 
saleries.salary
FROM employees
JOIN saleries ON
employees.emp_no=saleries.emp_no;

-- List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT
last_name, first_name, hire_date FROM employees
where hire_date like '%1986';

-- List the manager of each department along with 
-- their department number, 
-- department name, 
-- employee number,
-- last name, 
-- and first name.

select
	D.dept_no as "Department Number",
	D.dept_name as "Department Name",
	E.emp_no as "Employee Number",
	E.last_name as "Employee Last Name",
	E.first_name as "Employee First Name"
from dept_manager as DM
JOIN departments as D ON D.dept_no = DM.dept_no
JOIN employees as E on E.emp_no = DM.emp_no
WHERE e.emp_title_id = 'm0001'



-- List the department number for each employee along with that 
-- employee’s employee number, 
-- last name, 
-- first name, 
-- and department name.

SELECT employees.emp_no as "Employee Number",
employees.last_name, 
employees.first_name, 
dept_emp.dept_no as "Department Number", 
departments.dept_name as "Department Name"
FROM employees
INNER JOIN dept_emp ON
employees.emp_no=dept_emp.emp_no
inner join departments on 
departments.dept_no = dept_emp.dept_no;


-- List first name, last name, and sex of each employee
-- whose first name is Hercules and whose last name begins with the letter B.
SELECT
last_name, first_name, sex FROM employees
where first_name = 'Hercules' AND last_name LIKE 'B%' ;

-- -- List each employee in the Sales department,
-- including their employee number, last name, and first name.

SELECT employees.emp_no as "Employee Number",
employees.last_name, 
employees.first_name,  
departments.dept_name as "Department Name"
FROM employees
INNER JOIN dept_emp ON
employees.emp_no=dept_emp.emp_no
inner join departments on 
departments.dept_no = dept_emp.dept_no
where dept_name = 'Sales';

-- List each employee in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.

SELECT employees.emp_no as "Employee Number",
employees.last_name, 
employees.first_name,  
departments.dept_name as "Department Name"
FROM employees
INNER JOIN dept_emp ON
employees.emp_no=dept_emp.emp_no
inner join departments on 
departments.dept_no = dept_emp.dept_no
where dept_name = 'Sales' OR dept_name = 'Development';


-- List the frequency counts, in descending order, 
-- of all the employee last names (that is, how many employees share each last name).

SELECT last_name, count(last_name) AS "How many employees share the same last name"
FROM employees
GROUP BY last_name
ORDER BY count(last_name) DESC;

