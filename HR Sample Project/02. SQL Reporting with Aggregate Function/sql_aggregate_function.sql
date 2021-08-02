
/*Question 1 : Which employee has the highest salary in company? */
/*Note : i'm using "Concat" for merging the first_name and last_name so it will be "full name",
  "Sum" for calculating the salary amount,
  "Group by" for display field with aggregate function,
  "Order by" for showing the highest salary.*/
  
SELECT 		CONCAT(first_name, ' ', last_name) AS "Full Name", 
         	SUM(salary) AS salary
FROM 		employees
GROUP BY	first_name, last_name
ORDER BY	salary DESC;

/*Question 2 : Which employee didn't have "manager_id"?*/
/*Note : "Count" for counting manager_id field,
  "Having" for select/filter only which value is 0 also you can use "WHERE" clause to select/filter "NULL" values.*/
  
SELECT 		CONCAT(first_name, ' ', last_name) AS "Full Name", 
		COUNT(manager_id) AS manager_id
FROM 		employees
--WHERE		manager_id IS NULL
GROUP BY	first_name, last_name
HAVING		COUNT(manager_id) = 0
ORDER BY	manager_id DESC;

/*Question 3 : Determine our average salary in 2020!*/
/*Note : I use "AVG" to show average and also use "ROUND" to show without decimal.*/
  
SELECT 		ROUND(AVG(salary)) AS salary
FROM 		employees
WHERE		EXTRACT(YEAR FROM hire_date) = 2000

