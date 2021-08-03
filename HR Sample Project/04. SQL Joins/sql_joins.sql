/*asad */
SELECT		CONCAT(a.first_name, ' ', a.last_name) as "Full Name",
			    a.salary,
			    b.job_title
FROM		  employees a
LEFT JOIN	jobs b ON a.job_id = b.job_id
ORDER BY	max_salary DESC
