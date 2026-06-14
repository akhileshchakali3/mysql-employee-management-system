USE employee_management;

INSERT INTO departments(department_name)VALUES
('IT'),('HR'),('Finance'),('Marketing');

INSERT INTO employees(employee_name,salary,department_id,hire_date)VALUES
('Akhilesh Chakali',50000,1,'2023-01-10'),
('Chilam Srinivasulu',45000,2,'2022-05-12'),
('Bonthala Venkateswara Reddy',60000,1,'2021-03-08'),
('Adimoolam Nageswari',55000,3,'2020-11-20');

INSERT INTO addresses(employee_id,city,state)VALUES
(1,'Hyderabad','Telangana'),
(2,'Vijayawada','Andhra Pradesh'),
(3,'Bangalore','Karnataka'),
(4,'Chennai','Tamil Nadu');

