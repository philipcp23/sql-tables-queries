--Find a list of employee and bran names
SELECT first_name AS UNIONS
FROM employee
UNION
SELECT branch_name
FROM branch
UNION
SELECT client_name
FROM client;


--Find a list of all clients and branch suppliers names
SELECT client_name, client.branch_id
FROM client
UNION
SELECT supplier_name, branch_supplier.branch_id
FROM branch_supplier



--Find a list of all money spent or earned 
SELECT salary
FROM employee
UNION
SELECT total_sales
FROM works_with;