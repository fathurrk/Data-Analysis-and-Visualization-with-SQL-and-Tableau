/*Show employee which is join in 1998 until 2000 with their job title and salary*/
/*i use subquery on WHERE clause to filter only year of "hire_date" */
SELECT		CONCAT(a.first_name, ' ', a.last_name) as "Full Name",
		b.job_title,
	    	a.salary,
		EXTRACT(YEAR FROM a.hire_date) as "Year of Join"
FROM		employees a
LEFT JOIN	jobs b ON a.job_id = b.job_id
WHERE		a.first_name IN (SELECT a.first_name 
				 FROM employees
				 WHERE EXTRACT(YEAR FROM a.hire_date) BETWEEN 1998 AND 2000)

/*How many employee in our company on US?*/
SELECT		a.country_id,
		b.country_name,
		(SELECT COUNT(a.country_id) 
		FROM countries 
		GROUP BY a.country_id) AS "Count of Country"
FROM		locations a
LEFT JOIN	(SELECT *
		FROM countries
		WHERE country_name IS NOT NULL) b
ON 		a.country_id = b.country_id
WHERE		a.country_id = 'US'
GROUP BY	a.country_id, b.country_name
ORDER BY	"Count of Country" DESC


