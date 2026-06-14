DELIMITER $$

CREATE TRIGGER trg_employee_insert
AFTER INSERT
ON employees
FOR EACH ROW
BEGIN

INSERT INTO employee_audit
(employee_id,action_type)
VALUES
(NEW.employee_id,'INSERT');

END$$

DELIMITER ;


-- Test Trigger

INSERT INTO employees(employee_name,geneder,salary,department_id,hire_date)VALUES
('Bethamsetty Veera Raghava','M',40000,2,CURDATE());

SELECT *FROM employee_audit;