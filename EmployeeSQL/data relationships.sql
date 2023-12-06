-- Query tables
SELECT *  FROM departments;

SELECT *  FROM titles;

SELECT *  FROM employees;

SELECT *  FROM dept_emp;

SELECT *  FROM dept_manager;

SELECT *  FROM salaries;

------------------------------------------------------------------------------------
--1. List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
  FROM employees AS e
JOIN salaries AS s
  ON e.emp_no = s.emp_no
ORDER BY emp_no;

--2. List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
     FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

--3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT t.title, d.dept_no,d.dept_name,e.emp_no,e.last_name,e.first_name
     FROM titles AS t
INNER JOIN employees AS e
     ON t.title_id = e.emp_title_id
INNER JOIN dept_manager AS dm
     ON e.emp_no = dm.emp_no
INNER JOIN departments AS d
     ON dm.dept_no = d.dept_no
WHERE title = 'Manager'
     ORDER BY d.dept_name, e.last_name, e.first_name;

--4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT  d.dept_no, e.emp_no,e.last_name,e.first_name, d.dept_name
     FROM employees as e
INNER JOIN dept_emp AS de
     ON e.emp_no = de.emp_no
INNER JOIN departments AS d
     ON de.dept_no = d.dept_no
order by dept_no, emp_no;

--5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex, emp_no
     FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--6. List each employee in the Sales department, including their employee number, last name, and first name.
SELECT d.dept_name, e.emp_no,e.last_name,e.first_name
     FROM departments AS d
INNER JOIN dept_emp AS de
     ON d.dept_no = de.dept_no
INNER JOIN employees AS e
     ON de.emp_no = e.emp_no
WHERE dept_name = 'Sales'
     ORDER BY emp_no

--7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT d.dept_name,d.dept_no, e.emp_no,e.last_name,e.first_name
     FROM departments AS d
INNER JOIN dept_emp AS de
     ON d.dept_no = de.dept_no
INNER JOIN employees AS e
     ON de.emp_no = e.emp_no
WHERE dept_name IN ('Sales', 'Development')
     ORDER BY emp_no

--8.List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name,COUNT(last_name) AS "Last_names_Counts"
     FROM employees
GROUP BY last_name
     ORDER BY "Last_names_Counts" DESC;



