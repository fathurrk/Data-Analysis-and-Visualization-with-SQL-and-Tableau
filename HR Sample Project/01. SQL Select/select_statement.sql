/*Select all data from the “employees” table.*/
SELECT 		*
FROM 	  	employees

/*Select all people from the “employees” table whose first name is “Alex”.*/
SELECT 		*
FROM 		 employees
WHERE		 first_name LIKE '%Alex%';

/*Retrieve employee with last name is "Hunold" and "Khoo".*/
SELECT 		*
FROM 		 employees
WHERE	  last_name IN ('Hunold', 'Khoo');

/*Retrieve employee with last name is "Hunold" and "Khoo".*/
SELECT 		*
FROM 		 employees
WHERE		 last_name IN ('Hunold', 'Khoo');

/*Select all employee who is join in year "1995" and have salary higher than "10000".*/
SELECT 		*
FROM 		 employees
WHERE		 EXTRACT(YEAR FROM hire_date) = 1995 AND salary > 10000 ;

/*Select all employee that earning salary between "5000" to "10000".*/
SELECT 		*
FROM 	  employees
WHERE		 salary BETWEEN 5000 AND 10000 ;

/*Sort all employee by highest salary.*/
SELECT 		*
FROM 		 employees
ORDER BY salary DESC; 

/*Sort all employee by highest salary and choose only for 10 employee.*/
SELECT 		*
FROM 	  	employees
ORDER BY	salary DESC
LIMIT		  10; 
