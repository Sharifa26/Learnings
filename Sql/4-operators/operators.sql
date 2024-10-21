-- Create a sample employees table
CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    bonus DECIMAL(10, 2)
);

-- Insert some dummy data into employees table
INSERT INTO employees (first_name, last_name, department, salary, bonus) VALUES
('Alice', 'Johnson', 'Sales', 60000, NULL),
('Bob', 'Smith', 'Marketing', 50000, 5000),
('Charlie', 'Brown', 'Sales', 45000, 3000),
('David', 'Wilson', 'HR', 70000, NULL),
('Eva', 'Davis', 'IT', 80000, 10000),
('Frank', 'Moore', 'Marketing', 55000, NULL);

-- Comparison Operators
-- Example: Find employees with a salary equal to 50000
SELECT * FROM employees WHERE salary = 50000;

-- Example: Find employees with a salary greater than 60000
SELECT * FROM employees WHERE salary > 60000;

-- Example: Find employees with a salary less than or equal to 55000
SELECT * FROM employees WHERE salary <= 55000;

-- Logical Operators
-- Example: Find employees in the Sales department with a salary greater than 50000
SELECT * FROM employees WHERE department = 'Sales' AND salary > 50000;

-- Example: Find employees in either the Sales or Marketing department
SELECT * FROM employees WHERE department = 'Sales' OR department = 'Marketing';

-- Example: Find employees who are NOT in the HR department
SELECT * FROM employees WHERE NOT department = 'HR';

-- IN Operator
-- Example: Find employees in Sales or IT department
SELECT * FROM employees WHERE department IN ('Sales', 'IT');

-- BETWEEN Operator
-- Example: Find employees with a salary between 40000 and 60000
SELECT * FROM employees WHERE salary BETWEEN 40000 AND 60000;

-- LIKE Operator
-- Example: Find employees whose first name starts with 'A'
SELECT * FROM employees WHERE first_name LIKE 'A%';
-- Examples of LIKE operator

-- 1. Find customers whose first name starts with 'J'
SELECT * FROM customers WHERE first_name LIKE 'J%';

-- 2. Find customers whose last name ends with 'son'
SELECT * FROM customers WHERE last_name LIKE '%son';

-- 3. Find customers whose email contains 'example'
SELECT * FROM customers WHERE email LIKE '%example%';

-- 4. Find customers whose first name has exactly 4 characters
SELECT * FROM customers WHERE first_name LIKE '____';

-- 5. Find customers whose phone number starts with '123'
SELECT * FROM customers WHERE phone LIKE '123%';

-- 6. Find customers from 'San Francisco' with 'D' in their first name
SELECT * FROM customers WHERE city LIKE 'San Francisco' AND first_name LIKE 'D%';

-- IS NULL and IS NOT NULL
-- Example: Find employees with no bonus
SELECT * FROM employees WHERE bonus IS NULL;

-- Example: Find employees with a bonus
SELECT * FROM employees WHERE bonus IS NOT NULL;
