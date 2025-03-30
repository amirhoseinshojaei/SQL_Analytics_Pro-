-- Where Clause & Logical Operators

SELECT *
FROM
	parks_and_recreation.employee_demographics
WHERE
	first_name = 'Leslie'
;

SELECT *
FROM
	parks_and_recreation.employee_salary
WHERE
	salary = 50000
;

SELECT *
FROM
	parks_and_recreation.employee_demographics
WHERE
	gender != 'Female'
;


-- Logical Operators -> and or not

SELECT *
FROM
	employee_demographics
WHERE
	birth_date > '1985-01-01' AND gender = 'Male'
;

SELECT *
FROM
	employee_demographics
WHERE
	birth_date > '1985-01-01' AND NOT gender = 'Male'
;


SELECT *
FROM
	employee_demographics
WHERE
	(first_name = 'Leslie' AND age = 44) OR age > 55
;


SELECT *
FROM
	employee_demographics
WHERE 
	first_name LIKE 'jer%'
;


SELECT *
FROM
	employee_demographics
WHERE
	first_name LIKE '%er%'
;


SELECT *
FROM
	employee_demographics
WHERE
	first_name LIKE 'a__'
;


SELECT *
FROM
	employee_demographics
WHERE
	first_name 	LIKE 'a__%'
;

SELECT *
FROM
	employee_demographics
WHERE
	birth_date LIKE '1989%'
;