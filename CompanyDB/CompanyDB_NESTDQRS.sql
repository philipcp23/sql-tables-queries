--Find names of all employees who have
--sold over 30,000 to a single client
SELECT first_name, last_name
FROM employee
WHERE emp_id IN (
    SELECT emp_id
    FROM works_with
    WHERE total_sales > 30000
);

--Find all clients who are handled by the branch
--that Michael Scott manages
--Assume you know Michael's ID
SELECT employee.emp_id, employee.first_name, employee.last_name
FROM employee
WHERE employee.first_name = 'Michael' AND employee.last_name = 'Scott';



SELECT client.client_name
FROM client
WHERE client.branch_id = (    
    SELECT branch.branch_id
    FROM branch
    WHERE branch.mgr_id = 102
    LIMIT 1;
);