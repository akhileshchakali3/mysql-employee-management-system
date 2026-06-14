START TRANSACTION;

UPDATE employees
SET salary=salary+5000
WHERE employee_id=1;

COMMIT;


-- ROLLBACK EXAMPLE

START TRANSACTION;

UPDATE employees
SET salary=salary+10000
WHERE employee_id=2;

ROLLBACK;