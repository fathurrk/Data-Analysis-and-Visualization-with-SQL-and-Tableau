/*Question 1 : Can you show and breakdown our employee hire_date by Years and Months and calculate which Year is the highest employee that join in our company?*/
SELECT              EXTRACT(YEAR FROM hire_date) as "Year of Date",
                    COUNT(CASE WHEN EXTRACT(MONTH FROM hire_date) = 1 THEN 1 END) AS "January",
                    COUNT(CASE WHEN EXTRACT(MONTH FROM hire_date) = 2 THEN 1 END) AS "February",
                    COUNT(CASE WHEN EXTRACT(MONTH FROM hire_date) = 3 THEN 1 END) AS "March",
                    COUNT(CASE WHEN EXTRACT(MONTH FROM hire_date) = 4 THEN 1 END) AS "April",
                    COUNT(CASE WHEN EXTRACT(MONTH FROM hire_date) = 5 THEN 1 END) AS "May",
                    COUNT(CASE WHEN EXTRACT(MONTH FROM hire_date) = 6 THEN 1 END) AS "June",
                    COUNT(CASE WHEN EXTRACT(MONTH FROM hire_date) = 7 THEN 1 END) AS "July",
                    COUNT(CASE WHEN EXTRACT(MONTH FROM hire_date) = 8 THEN 1 END) AS "August",
                    COUNT(CASE WHEN EXTRACT(MONTH FROM hire_date) = 9 THEN 1 END) AS "September",
                    COUNT(CASE WHEN EXTRACT(MONTH FROM hire_date) = 10 THEN 1 END) AS "October",
                    COUNT(CASE WHEN EXTRACT(MONTH FROM hire_date) = 11 THEN 1 END) AS "November",
                    COUNT(CASE WHEN EXTRACT(MONTH FROM hire_date) = 12 THEN 1 END) AS "December",
                    COUNT(CASE WHEN EXTRACT(MONTH FROM hire_date) BETWEEN 1 AND 12 THEN 1 END) AS "Total Count"
FROM                employees
GROUP BY	          EXTRACT(YEAR FROM hire_date)
ORDER BY	          "Total Count" DESC;

/*Question 2 : Can you show and breakdown our employee "Salary" by Years and Months and calculate which Year is the highest Salary in our company?*/
SELECT 		          EXTRACT(YEAR FROM hire_date) as "Year of Date",
                    COALESCE(SUM(CASE WHEN EXTRACT(MONTH FROM hire_date) = 1 THEN salary END),0) AS "January",
                    COALESCE(SUM(CASE WHEN EXTRACT(MONTH FROM hire_date) = 2 THEN salary END),0) AS "February",
                    COALESCE(SUM(CASE WHEN EXTRACT(MONTH FROM hire_date) = 3 THEN salary END),0) AS "March",
                    COALESCE(SUM(CASE WHEN EXTRACT(MONTH FROM hire_date) = 4 THEN salary END),0) AS "April",
                    COALESCE(SUM(CASE WHEN EXTRACT(MONTH FROM hire_date) = 5 THEN salary END),0) AS "May",
                    COALESCE(SUM(CASE WHEN EXTRACT(MONTH FROM hire_date) = 6 THEN salary END),0) AS "June",
                    COALESCE(SUM(CASE WHEN EXTRACT(MONTH FROM hire_date) = 7 THEN salary END),0) AS "July",
                    COALESCE(SUM(CASE WHEN EXTRACT(MONTH FROM hire_date) = 8 THEN salary END),0) AS "August",
                    COALESCE(SUM(CASE WHEN EXTRACT(MONTH FROM hire_date) = 9 THEN salary END),0) AS "September",
                    COALESCE(SUM(CASE WHEN EXTRACT(MONTH FROM hire_date) = 10 THEN salary END),0) AS "October",
                    COALESCE(SUM(CASE WHEN EXTRACT(MONTH FROM hire_date) = 11 THEN salary END),0) AS "November",
                    COALESCE(SUM(CASE WHEN EXTRACT(MONTH FROM hire_date) = 12 THEN salary END),0) AS "December",
                    SUM(CASE WHEN EXTRACT(MONTH FROM hire_date) BETWEEN 1 AND 12 THEN salary END) AS "Total Salary"
FROM 		            employees
GROUP BY	          EXTRACT(YEAR FROM hire_date)
ORDER BY	          "Total Salary" DESC;
