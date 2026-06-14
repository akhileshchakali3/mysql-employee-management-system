CREATE INDEX idx_department ON employees(department_id);

SHOW INDEX FROM employees;

EXPLAIN
SELECT *
FROM employees
WHERE department_id=1;