SELECT e.employee_name, d.department_name FROM employees e INNER JOIN
departments d ON e.department_id=d.department_id;

CREATE VIEW employee_details AS
SELECT
e.employee_id,
e.employee_name,
d.department_name,
e.salary
FROM employees e
JOIN departments d
ON e.department_id=d.department_id;

SELECT * FROM employee_details;