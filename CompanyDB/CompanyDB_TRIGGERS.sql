CREATE TABLE trigger_test(
    message VARCHAR(100)
);

DELIMITER $$
    CREATE
        TRIGGER my_trigger BEFORE INSERT
        ON employee
        FOR EACH ROW BEGIN
        INSERT INTO trigger_test VALUES('add new employee');
    END$$
DELIMITER ;

INSERT INTO employee VALUES(109, 'Oscar', 'Martinez', '1961-02-17', 'M', 69000, 106, 3);

SELECT * FROM trigger_test;

DELIMITER $$
    CREATE
        TRIGGER my_trigger1 BEFORE INSERT
        ON employee
        FOR EACH ROW BEGIN
        INSERT INTO trigger_test VALUES(NEW.first_name);
    END$$
DELIMITER ;

INSERT INTO employee VALUES(110, 'Kevin', 'Malone', '1967-01-13', 'M', 69000, 106, 3);


DELIMITER $$
    CREATE
        TRIGGER my_trigger2 BEFORE INSERT
        ON employee
        FOR EACH ROW BEGIN
        IF NEW.sex = 'M' THEN
            INSERT INTO trigger_test VALUES('added male employee');
        ELSEIF NEW.sex = 'F' THEN
            INSERT INTO trigger_test VALUES('added female employee');
        ELSE 
            INSERT INTO trigger_test VALUES('added other employee');
        END IF;
    END$$
DELIMITER ;

INSERT INTO employee VALUES(111, 'Pam', 'Beasley', '1981-08-23', 'F', 51000, 106, 3);
