ALTER TABLE employees MODIFY employee_name VARCHAR(100) NOT NULL;
ALTER TABLE employees ADD CONSTRAINT chk_salary CHECK(salary>=0);
ALTER TABLE employees ADD COLUMN geneder ENUM('F','M','OTHERS') 
AFTER employee_name;
UPDATE employees SET geneder='M' WHERE employee_id IN (1,2,3);
UPDATE employees SET geneder='F' WHERE employee_id NOT IN (1,2,3);
