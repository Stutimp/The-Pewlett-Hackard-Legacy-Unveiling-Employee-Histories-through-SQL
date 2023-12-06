## SQL-Challenge
## Module 9 Challenge

### Introduction 
For this assignment, I divided my work into three parts:
- Data Modeling.
- Data Engineering.
- Data Analysis.

**For the Data Modeling part**, First I did my analysis using python codes inside jupyter notebook, where I found out data types of the tables and looked for columnns in the tables which are eligible to be the primary key in their respective tables. After getting some valuable insights from my jupyter notebook analayis using python codes, then I went to Quick Database diagrams (Quick DBD)https://app.quickdatabasediagrams.com/#/ and created DB schema diagram with it using all the provided six csv files. I saved the diagram in .png format and also exported into pgAdmin4 and made a sql file named as, 'schema sql'.

**For the Data Engineering part**,On the pgAdmin4 I modified the exported codes little differently to improve the readability while specifying the data types, primary keys, foreign keys, and other constraints. I created the tables in the correct order to handle the foreign keys.

**For the Data Analysis part**, 
- After creating another relationship query window, I created following select,from and where statements based on the requirements:

- I  listed the employee number, last name, first name, sex, and salary of each employee.
- Listed the first name, last name, and hire date for the employees who were hired in 1986.
- Listed the manager of each department along with their department number, department name, employee number, last name, and first name.
- Listed the department number for each employee along with that employee’s employee number, last name, first name, and department name.
- Listed first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
- Listed each employee in the Sales department, including their employee number, last name, and first name.
- Listed each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
- Listed the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).


Thank you !