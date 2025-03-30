-- Joins

SELECT *
FROM
	employee_demographics AS dem
INNER JOIN
	employee_salary AS sal
    ON dem.employee_id = sal.employee_id
;


-- Outer Join

-- LEFT JOIN

SELECT *
FROM
	parks_and_recreation.employee_demographics AS dem
LEFT JOIN
	parks_and_recreation.employee_salary AS sal
    ON dem.employee_id = sal.employee_id
;


SELECT *
FROM
	employee_demographics AS dem
RIGHT JOIN
	employee_salary AS sal
    ON dem.employee_id = sal.employee_id
;


-- SELF JOIN

SELECT *
FROM
	employee_demographics AS dem
INNER JOIN
	employee_demographics AS dem2
ON
	dem.employee_id = dem2.employee_id
;


SELECT *
FROM
	employee_demographics AS dem
INNER JOIN
	employee_salary AS sal
	ON dem.employee_id+1 = sal.employee_id
;


SELECT *
FROM
	employee_demographics AS dem
INNER JOIN
	employee_demographics AS dem2
	ON dem.employee_id+1 = dem2.employee_id
;

-- Multiple Joins

SELECT *
FROM
	employee_demographics AS dem
INNER JOIN
	employee_salary AS sal
    ON dem.employee_id = sal.employee_id
INNER JOIN
	parks_departments AS pd
    ON sal.dept_id = pd.department_id
;




