## The Pewlett Hackard Legacy: Unveiling Employee Histories through SQL

## Project Overview
This comprehensive SQL-based research initiative project is aimed at reconstructing and analyzing the employee data from Pewlett Hackard (a fictional Company) during the 1980s and 1990s. Due to the partial loss of the original employee database, this project involves the creation of a relational database from six CSV files that contain the remaining employee information.

The project is divided into three main parts:

1. **Data Modeling:**

In this phase, an Entity Relationship Diagram (ERD) was created to design the database schema, ensuring that all necessary tables, relationships, and constraints were appropriately defined.

**Steps Taken**

 First I did my analysis using python codes inside jupyter notebook, where I found out data types of the tables and looked for columnns in the tables which are eligible to be the primary key in their respective tables. After getting some valuable insights from my jupyter notebook analayis using python codes, then I went to Quick Database diagrams (Quick DBD)https://app.quickdatabasediagrams.com/#/ and created DB schema diagram with it using all the provided six csv files. I saved the diagram in .png format and also exported into pgAdmin4 and made a sql file named as, 'schema sql'.

2. **Data Engineering:**

This step involved translating the ERD into a series of SQL scripts to create the database schema. The CSV files were then imported into the corresponding SQL tables, allowing for structured and queryable data storage.

**Steps Taken**

On the pgAdmin4 I modified the exported codes little differently to improve the readability while specifying the data types, primary keys, foreign keys, and other constraints. I created the tables in the correct order to handle the foreign keys.

3. **Data Analysis:**

With the data in place, a series of SQL queries were performed to extract meaningful insights from the employee data. These queries answered specific questions about the employees, such as their salaries, department assignments, management structure, and hiring dates.

**Steps Taken**

After creating another relationship query window, I created following select,from and where statements based on the requirements:

- I  listed the employee number, last name, first name, sex, and salary of each employee.
- Listed the first name, last name, and hire date for the employees who were hired in 1986.
- Listed the manager of each department along with their department number, department name, employee number, last name, and first name.
- Listed the department number for each employee along with that employee’s employee number, last name, first name, and department name.
- Listed first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
- Listed each employee in the Sales department, including their employee number, last name, and first name.
- Listed each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
- Listed the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

## Key Takeaways

This project not only demonstrates the fundamentals of data modeling and database creation but also highlights the power of SQL in uncovering historical insights from legacy data. The results of this project provide a detailed look into the workforce of Pewlett Hackard during two pivotal decades.


Thank you !

Author

Stuti Poudel