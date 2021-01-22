
--List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no,
	   employees.last_name,
	   employees.first_name,
	   employees.sex,
	   salaries.salary
FROM employees
INNER JOIN salaries
	ON salaries.emp_no = employees.emp_no;
	
----------------------------------------------------------------------------------------------------

--List first name, last name, and hire date for employees who were hired in 1986.
SELECT emp_no,
	   last_name,
	   first_name,
	   hire_date
FROM employees
WHERE hire_date LIKE '%1986%'
ORDER BY hire_date

----------------------------------------------------------------------------------------------------

--List the manager of each department with the following information: department number,
--department name,the manager's employee number, last name, first name.
SELECT
employees.last_name,
employees.first_name,
dept_manager.emp_no,
departments.dept_no,
departments.dept_name
FROM employees
	Inner Join dept_manager On dept_manager.emp_no = employees.emp_no
	Inner Join departments ON dept_manager.dept_no = departments.dept_no
WHERE employees.emp_title_id = 'm0001';

----------------------------------------------------------------------------------------------------

--List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT
employees.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
FROM employees
INNER JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no;

----------------------------------------------------------------------------------------------------

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT
first_name,
last_name,
sex
FROM employees WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

----------------------------------------------------------------------------------------------------

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT 
employees.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
FROM employees
INNER JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_no = 'd007';

----------------------------------------------------------------------------------------------------

--List all employees in the Sales and Development departments, including their employee number,last name, first name, and department name.
SELECT 
employees.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
FROM employees
INNER JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_no = 'd007' OR departments.dept_no = 'd005';

----------------------------------------------------------------------------------------------------

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(*) AS CNT
FROM employees
GROUP BY last_name
ORDER BY last_name DESC;




