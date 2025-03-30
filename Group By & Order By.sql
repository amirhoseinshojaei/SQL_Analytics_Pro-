-- Group By & Order By

SELECT 
	gender
FROM
	employee_demographics
;


SELECT
	gender,
    AVG(age)
FROM
	employee_demographics
GROUP BY gender
;

SELECT 
	age,
	COUNT(gender)
FROM
	employee_demographics
GROUP BY age
;

SELECT 
	occupation,
    salary
FROM
	employee_salary
GROUP BY occupation, salary
;

SELECT 
	gender,
    AVG(age),
    MAX(age),
    MIN(age),
    COUNT(age),
    SUM(age)
FROM
	employee_demographics
GROUP BY gender
;


-- ORDER BY

SELECT *
FROM
	employee_demographics
ORDER BY
	first_name
;


SELECT *
FROM
	employee_demographics
ORDER BY
	first_name ASC
;


SELECT *
FROM
	employee_demographics
ORDER BY
	age, gender DESC
;


SELECT *
FROM
	employee_demographics
ORDER BY 5,4 DESC
;

