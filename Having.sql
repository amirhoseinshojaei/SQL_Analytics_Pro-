-- Having


/**
The WHERE and HAVING clauses in SQL are both used to filter records, but they have key differences in how and when they are applied:

1. WHERE Clause
Used to filter rows before any grouping or aggregation (GROUP BY).

Works on individual rows in a table.

Cannot be used with aggregate functions like SUM(), COUNT(), AVG(), etc.

2. HAVING Clause
Used to filter grouped records after the GROUP BY operation.

Works on aggregated results.

Can be used with aggregate functions like SUM(), COUNT(), etc.

**/

SELECT 
	gender,
    AVG(age)
FROM
	employee_demographics
GROUP BY gender
HAVING 
	AVG(age) > 40
;


SELECT 
	occupation,
    AVG(salary)
FROM
	employee_salary
GROUP BY 
	occupation
;


SELECT 
	occupation,
    AVG(salary)
FROM
	employee_salary
WHERE
	occupation LIKE '%Manager%'
GROUP BY 
	occupation
;

SELECT 
	occupation,
    AVG(salary)
FROM
	employee_salary
WHERE
	occupation LIKE '%Manager%'
GROUP BY 
	occupation
HAVING
	AVG(salary) > 40000
;


SELECT 
	occupation,
    AVG(salary),
    SUM(salary),
    MAX(salary),
    MIN(salary)
FROM
	parks_and_recreation.employee_salary
WHERE
	occupation LIKE '%Manager%'
GROUP BY
	occupation
HAVING
	AVG(salary) > 40000
ORDER BY
	AVG(salary)
;



