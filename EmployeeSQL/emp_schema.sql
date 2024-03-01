CREATE TABLE departments(
	dept_no VARCHAR(4) UNIQUE NOT NULL,
	dept_name VARCHAR(100) NOT NULL,
	PRIMARY KEY (dept_no)
);

CREATE TABLE titles(
	title_id VARCHAR(5) UNIQUE NOT NULL,
	title VARCHAR(100) UNIQUE NOT NULL,
	PRIMARY KEY (title_id)
);

CREATE TABLE employees(
	emp_no INTEGER UNIQUE NOT NULL,
	emp_title_id VARCHAR(5) NOT NULL,
	birth_date DATE,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	sex VARCHAR(1),
	hire_date DATE,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE dept_emp(
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR(4) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(4) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE salaries(
	emp_no INTEGER UNIQUE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary INTEGER NOT NULL,
	PRIMARY KEY (emp_no)
);