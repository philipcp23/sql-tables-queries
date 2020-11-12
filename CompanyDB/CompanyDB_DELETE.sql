-----------------------ON DELETE SET NULL--------------------------------
CREATE TABLE branch (
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(40),
    mgr_id INT,
    mrg_start_date DATE,
    FOREIGN KEY(mgr_id) REFERENCES employee(emp_id) ON DELETE SET NULL
);

DELETE FROM employee
WHERE emp_id = 102;

SELECT * 
FROM employee;

SELECT *
FROM branch;

DROP TABLE branch;

-----------------------ON DELETE CASCADE---------------------------------
CREATE TABLE branch_supplier (
    branch_id INT,
    supplier_name VARCHAR(40),    
    supplier_type VARCHAR(40),
    PRIMARY KEY(branch_id, supplier_name),
    FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE CASCADE
);
DELETE FROM branch
WHERE branch_id = 2;

SELECT * FROM branch_supplier;