CREATE DATABASE employee_management;
USE employee_management;

CREATE TABLE departments(department_id INT PRIMARY KEY AUTO_INCREMENT,
						 department_name VARCHAR(50) NOT NULL);
                         
CREATE TABLE employees(employee_id INT PRIMARY KEY AUTO_INCREMENT,
					   employee_name VARCHAR(100),
                       salary DECIMAL(10,2),
                       department_id INT,
                       hire_date DATE,
                       CONSTRAINT fk_dept FOREIGN KEY (department_id) REFERENCES departments(department_id) );
                       

CREATE TABLE addresses(address_id INT PRIMARY KEY AUTO_INCREMENT,
					   employee_id INT,
                       city VARCHAR(40),
                       state VARCHAR(50),
                       CONSTRAINT fk_emp_id FOREIGN KEY (employee_id) REFERENCES employees(employee_id));
                       

CREATE TABLE employee_audit(audit_id INT PRIMARY KEY AUTO_INCREMENT,
							employee_id INT,
                            action_type VARCHAR(50),
                            action_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP);