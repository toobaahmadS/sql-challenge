ALTER DATABASE "research_db" SET datestyle
TO "ISO, MDY";
-- Creating table schema

-- Create table departments

DROP TABLE departments

CREATE TABLE departments (
  dept_no VARCHAR(10) NOT NULL,
  dept_name VARCHAR(30) NOT NULL,
  PRIMARY KEY (dept_no)
);

select * from departments


-- Create table employees
SHOW DateStyle;
DROP TABLE employees;

CREATE TABLE employees (
	emp_no VARCHAR(15)NOT NULL,
	title_id VARCHAR(30) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	sex VARCHAR(2) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (title_id) REFERENCES titles(title_id)
);

select * from employees


--Create table dept_emp

DROP TABLE dept_emp;

CREATE TABLE dept_emp (
	emp_no VARCHAR(15)NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
    
);

select * from dept_emp


-- Create table dept_managers

DROP TABLE dept_manager

CREATE TABLE dept_manager (
	dept_no VARCHAR(10) NOT NULL,
	emp_no VARCHAR(15)NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from dept_manager



--Creating salaries table

DROP TABLE salaries

CREATE TABLE salaries (
	emp_no VARCHAR(15)NOT NULL,
	salary BIGINT NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

select * from salaries


--Creating titles table

DROP TABLE titles

CREATE TABLE titles (
	title_id varchar(30),
	title varchar(30),
	PRIMARY KEY (title_id)
);

select * from titles
