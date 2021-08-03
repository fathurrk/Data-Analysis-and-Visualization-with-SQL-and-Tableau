/*Show all employee with their salary and position */
/*Because job title columns is not in "employee" table, so i have to join the table with "jobs" table to get job title column*/
SELECT		CONCAT(a.first_name, ' ', a.last_name) as "Full Name",
		a.salary,
	        b.job_title
FROM		employees a
LEFT JOIN	jobs b ON a.job_id = b.job_id
ORDER BY	max_salary DESC;


/*Show all employee which has the nearest max salary!*/
/*to show the nearest max salary, i have to subtract "max_salary" and "salary" so i can get the result*/
SELECT		CONCAT(a.first_name, ' ', a.last_name) as "Full Name",
		b.job_title,
		a.salary,
		b.min_salary,
		b.max_salary,
		b.max_salary - a.salary AS "Gap Salary"
FROM		employees a
LEFT JOIN	jobs b ON a.job_id = b.job_id
ORDER BY	"Gap Salary" ASC;


