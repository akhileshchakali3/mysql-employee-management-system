DELIMITER $$

CREATE PROCEDURE Add_employee(
IN emp_name VARCHAR(100),
IN emp_gender ENUM('F','M','OTHERS'),
IN emp_salary DECIMAL(10,2),
IN dept_id INT
)
BEGIN

INSERT INTO employees
(employee_name,geneder,salary,department_id,hire_date)
VALUES
(emp_name,emp_gender,emp_salary,dept_id,CURDATE());

END$$

DELIMITER ;

CALL Add_employee(
'Bonthala Kavya',
'F',
48000,
2
);

SELECT *FROM employees;