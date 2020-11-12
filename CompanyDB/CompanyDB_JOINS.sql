INSERT INTO branch VALUES(4, 'Buffalo', NULL, NULL);

SELECT *
FROM branch;


--Find all branches and the names of their managers------------

--INNER JOIN
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
JOIN branch
ON employee.emp_id = branch.mgr_id;

--LEFT JOIN
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
LEFT JOIN branch
ON employee.emp_id = branch.mgr_id;

--RIGHT JOIN
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
RIGHT JOIN branch
ON employee.emp_id = branch.mgr_id;


--FULL OUTER JOIN-Grab all branches