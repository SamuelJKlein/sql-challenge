SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary FROM employees e
INNER JOIN salaries s ON s.emp_no = e.emp_no;


SELECT first_name, last_name,  hire_date FROM employees 
WHERE EXTRACT(YEAR FROM hire_date) = 1986;


SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name FROM dept_manager dm 
LEFT JOIN employees e ON e.emp_no = dm.emp_no
LEFT JOIN departments d ON dm.dept_no = d.dept_no;


SELECT d.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name FROM dept_emp de
LEFT JOIN employees e ON e.emp_no = de.emp_no
LEFT JOIN departments d ON de.dept_no = d.dept_no;


SELECT first_name, last_name, sex FROM employees 
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';


SELECT e.emp_no, e.last_name, e.first_name FROM dept_emp de
LEFT JOIN employees e ON e.emp_no = de.emp_no
LEFT JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';


SELECT e.emp_no, e.last_name, e.first_name, d.dept_name FROM dept_emp de
LEFT JOIN employees e ON e.emp_no = de.emp_no
LEFT JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';


SELECT last_name, count(emp_no) 
FROM employees
GROUP BY last_name
ORDER BY count(emp_no) DESC;

