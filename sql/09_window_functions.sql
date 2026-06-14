SELECT
employee_name,
salary,
ROW_NUMBER()
OVER(ORDER BY salary DESC) AS row_num
FROM employees;

SELECT
employee_name,
salary,
RANK()
OVER(ORDER BY salary DESC) AS ranking
FROM employees;

SELECT
employee_name,
salary,
DENSE_RANK()
OVER(ORDER BY salary DESC) AS dense_ranking
FROM employees;


-- DIFFERENCE OF ROW_NUMBER(),RANK() AND DENSE_RANK()

SELECT
employee_name,
salary,
ROW_NUMBER()
OVER(ORDER BY salary DESC) AS row_num,
RANK()
OVER(ORDER BY salary DESC) AS ranking,
DENSE_RANK()
OVER(ORDER BY salary DESC) AS dense_ranking
FROM employees;