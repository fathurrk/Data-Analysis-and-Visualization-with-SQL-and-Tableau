/*Create visualization that showing each employee salary and their rate salary*/
/*Output : employee_salary.csv*/
SELECT		CONCAT(a.first_name, ' ', a.last_name) as "Full Name",
          b.job_title,
          a.salary,
          b.max_salary,
          CAST(ROUND(a.salary) AS decimal) / CAST(ROUND(b.max_salary) AS decimal) AS "Rate Salary"
FROM		  employees a
LEFT JOIN	jobs b ON a.job_id = b.job_id
ORDER BY	"Rate Salary" DESC;

/*Show department with total of amount salary and total of employee in each department*/
/*Output : salary_by_department.csv*/
SELECT		b.department_name, 
          SUM(a.salary) AS "Amount of Salary",
          COUNT(a.salary) AS "Number of Salary"
FROM	  	employees a
LEFT JOIN departments b ON a.department_id = b.department_id
GROUP BY	b.department_name
ORDER BY	"Amount of Salary" DESC;

/*Compare Amount Salary and Number of employe in each regions*/
/*Output : regions.csv*/
SELECT		a.region_name, 
          COUNT(a.region_name),
          SUM(e.salary)
FROM	  	regions a
LEFT JOIN	countries b ON a.region_id = b.region_id
LEFT JOIN	locations c ON b.country_id = c.country_id
LEFT JOIN	departments d ON c.location_id = d.location_id
LEFT JOIN	employees e ON d.department_id = e.department_id
GROUP BY	a.region_name;

/*Show total hire in each year*/
/*Output : date_of_join.csv*/
SELECT		EXTRACT(YEAR FROM a.hire_date) AS "Year of Join",
			    COUNT(a.hire_date) AS Total
FROM		  employees a
GROUP BY	EXTRACT(YEAR FROM a.hire_date)
ORDER BY	Total DESC








