-- Select Statement

SELECT *
FROM
	employee_demographics
;


SELECT *
FROM
	employee_salary;
    
SELECT *
FROM
	parks_departments;


-- DISTINCT > REMOVE DUPLICATES

SELECT 
	gender
FROM
	employee_demographics;
    
    
SELECT DISTINCT 
	gender
FROM
	employee_demographics
;

-- PEMDAS

SELECT 
	salary,
    (salary+10) * 0.10
FROM
	employee_salary
;