-- Find the number of employees
SELECT COUNT(emp_id)
FROM employee;

--Find Female employess born after 1970
SELECT COUNT(emp_id)
FROM employee
WHERE sex = 'F' AND birth_day > '1971-01-01';

--Find the average of all employees salary then just M
SELECT AVG(salary)
FROM employee
WHERE sex = 'M';

--Find the sum of all employee salaries
SELECT SUM(salary)
FROM employee;

--Find out how many females vs males
SELECT COUNT(sex), sex
FROM employee
GROUP BY sex;

--Find the total sales of each person
SELECT SUM(total_sales), emp_id
FROM works_with
GROUP BY emp_id;

--Find the total sales of each person
SELECT SUM(total_sales), client_id
FROM works_with
GROUP BY client_id;


-------WILDCARDS---LIKE-------- % _

--Find any clients that have an LLC
SELECT *
FROM client 
WHERE client_name LIKE '%LLC';

--Find any branch supplier in the label business
SELECT *
FROM branch_supplier
WHERE supplier_name LIKE '%Label%';

--Find any employer born in October
SELECT *
FROM employee
WHERE birth_day LIKE '____-10%';

SELECT *
FROM client
WHERE client_name LIKE '%SCHOOL%';




















