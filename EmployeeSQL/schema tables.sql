-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/EJpCCS
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

-----Now, Modifying the generated schema for better readability
--dropping tables that exists already in the database

DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS employees;

-- Creating all the tables and importing respective csv files
-- Create a table of departments
CREATE TABLE departments (
    dept_no varchar(4) NOT NULL,
    dept_name varchar(20)  NOT NULL,
	PRIMARY KEY (dept_no)
);

-- Create a table of titles
CREATE TABLE titles (
     title_id varchar(5) NOT NULL,
     title varchar(20) NOT NULL,
     PRIMARY KEY (title_id) 
       
     );
	 
-- Create a table of employees	 
CREATE TABLE employees (
     emp_no int NOT NULL,
     emp_title_id varchar(5) NOT NULL,
     birth_date date NOT NULL,
     first_name varchar(20)   NOT NULL,
     last_name varchar(20)   NOT NULL,
     sex varchar(1)   NOT NULL,
     hire_date date   NOT NULL,
     PRIMARY KEY (emp_no),
     FOREIGN KEY  (emp_title_id) references titles (title_id)
);

-- Create a junction table
CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR(4) NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
 
);

CREATE TABLE dept_manager (
    dept_no varchar(4)  NOT NULL,
    emp_no int NOT NULL,
    PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES  departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)     
);

CREATE TABLE salaries (
    emp_no INT NOT NULL,
    salary INT NOT NULL,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

