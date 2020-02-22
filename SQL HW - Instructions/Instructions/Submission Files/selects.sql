--List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender FROM employees 
INNER JOIN salaries ON salaries.emp_no=employees.emp_no;

--List employees who were hired in 1986.
SELECT emp_no, first_name, last_name FROM employees WHERE hire_date BETWEEN '1986-01-01' AND '1987-01-01';

--List the manager of each department with the following information: department number, department name, 
--the manager's employee number, last name, first name, and start and end employment dates.

SELECT dept_name, dept_no, empt_no, last_name, first_name, from_date, to_date  FROM dept_manager 
NATURAL JOIN employees
NATURAL JOIN departments;

--List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT emp_no, last_name, first_name, dept_name  FROM employees 
NATURAL JOIN departments;

--List all employees whose first name is "Hercules" and last names begin with "B."
SELECT emp_no, last_name, first_name FROM employees WHERE first_name = 'Hercules' AND last_name LIKE 'B%';


--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
INNER JOIN employees ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales'


--List all employees in the Sales and Development departments, including their employee number, 
--last name, first name, and department name.

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
INNER JOIN employees ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development';


--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name, COUNT(last_name) FROM employees GROUP BY last_name;


SELECT * FROM employees;





SELECT * FROM departments;