-- 1. List the following details of each employee: employee number, 
-- last name, 
-- first name, gender, and salary.

-- SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
-- FROM employees e
-- JOIN salaries s
-- ON e.emp_no = s.emp_no


-- 2. List employees who were hired in 1986.

-- SELECT e.emp_no, e.last_name, e.first_name, e.hire_date
-- FROM employees e
-- WHERE EXTRACT(YEAR FROM e.hire_date) = 1986


-- 3. List the manager of each department with the following information: 
-- department number, department name, 
-- the manager's employee number, last name, first name, 
-- and start and end employment dates.

-- WITH base_table AS (
-- 	SELECT d.dept_no, d.dept_name 
-- ,m.emp_no, m.from_date, m.to_date
-- FROM departments d
-- JOIN dept_manager m
-- ON d.dept_no = m.dept_no
-- )

-- SELECT bt.dept_no, bt.dept_name, bt.emp_no, bt.from_date, bt.to_date
-- ,e.first_name, e.last_name
-- FROM base_table bt
-- JOIN employees e
-- ON bt.emp_no = e.emp_no 


-- 4. List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.

-- WITH base_table AS 
-- (SELECT e.emp_no, e.first_name, e.last_name, de.dept_no
-- FROM employees e
-- JOIN dept_emp de
-- ON e.emp_no = de.emp_no)

-- SELECT bt.emp_no, bt.first_name, bt.last_name, d.dept_name
-- FROM base_table bt
-- JOIN departments d
-- ON bt.dept_no = d.dept_no 


-- 5. List all employees whose first name is "Hercules" 
-- and last names begin with "B."

-- SELECT e.first_name, e.last_name
-- FROM employees e
-- WHERE first_name = 'Hercules'
-- AND last_name
-- LIKE 'B%'


-- 6. List all employees in the Sales department, 
-- including their employee number, 
-- last name, first name, and department name.

-- WITH base_table AS 
-- (SELECT e.emp_no, e.first_name, e.last_name, de.dept_no
-- FROM employees e
-- JOIN dept_emp de
-- ON e.emp_no = de.emp_no)

-- SELECT bt.emp_no, bt.first_name, bt.last_name, d.dept_name
-- FROM base_table bt
-- JOIN departments d
-- ON bt.dept_no = d.dept_no 
-- WHERE dept_name = 'Sales'


-- 7. List all employees in the Sales and Development departments, 
-- including their employee number, 
-- last name, first name, and department name.

-- WITH base_table AS 
-- (SELECT e.emp_no, e.first_name, e.last_name, de.dept_no
-- FROM employees e
-- JOIN dept_emp de
-- ON e.emp_no = de.emp_no)

-- SELECT bt.emp_no, bt.first_name, bt.last_name, d.dept_name
-- FROM base_table bt
-- JOIN departments d
-- ON bt.dept_no = d.dept_no 
-- WHERE dept_name = 'Sales'
-- OR dept_name = 'Development'


-- 8. In descending order, list the frequency count 
-- of employee last names, 
-- i.e., how many employees share each last name.

-- SELECT last_name, count(*)
-- FROM employees
-- GROUP BY last_name 
-- ORDER BY count DESC


-- SELECT * FROM employees
-- WHERE emp_no = 499942

--GOT ME
