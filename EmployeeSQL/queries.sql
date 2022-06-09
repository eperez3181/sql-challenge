-- List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no 


-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%1986';


-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.
SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM dept_manager
RIGHT JOIN departments 
ON departments.dept_no=dept_manager.dept_no
JOIN employees
ON employees.emp_no = dept_manager.emp_no;


-- List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
SELECT dept_employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_employees
RIGHT JOIN employees
ON employees.emp_no=dept_employees.emp_no
JOIN departments
ON departments.dept_no= dept_employees.dept_no;


-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';


-- List all employees in the Sales department, 
-- including their employee number, last name, first name, and department name.
SELECT dept_employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_employees
JOIN employees
ON employees.emp_no = dept_employees.emp_no
JOIN departments
ON departments.dept_no = dept_employees.dept_no
WHERE departments.dept_no = 'd007';


-- List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.
SELECT dept_employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_employees
JOIN employees
ON employees.emp_no = dept_employees.emp_no
JOIN departments
ON departments.dept_no = dept_employees.dept_no
WHERE departments.dept_no IN ('d005','d007');


-- List the frequency count of employee last names 
-- (i.e., how many employees share each last name) in descending order.
SELECT last_name, COUNT(last_name) AS "Last name frequency"
FROM employees
GROUP BY last_name
ORDER BY "Last name frequency" DESC;


