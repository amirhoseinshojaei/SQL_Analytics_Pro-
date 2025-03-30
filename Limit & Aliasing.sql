-- Limit & Aliasing

SELECT *
FROM
	employee_demographics
LIMIT 3;


SELECT *
FROM
	employee_demographics
ORDER BY
	first_name
LIMIT 3
;


SELECT *
FROM
	employee_demographics
ORDER BY
	age DESC
LIMIT 2,1
;


SELECT
	gender,
	AVG(age) AS average_age
FROM
	employee_demographics
GROUP BY
	gender
HAVING
	average_age > 40
;










