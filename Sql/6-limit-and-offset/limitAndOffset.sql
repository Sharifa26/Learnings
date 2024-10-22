-- Create a sample customers table
CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    city VARCHAR(50)
);

-- Insert some dummy data into customers table
INSERT INTO customers (first_name, last_name, age, city) VALUES
('John', 'Doe', 30, 'New York'),
('Jane', 'Smith', 25, 'Los Angeles'),
('Sam', 'Brown', 22, 'Chicago'),
('Mike', 'Johnson', 40, 'New York'),
('Emily', 'Davis', 35, 'Los Angeles'),
('Chris', 'Garcia', 28, 'Miami'),
('Katie', 'Martinez', 32, 'Chicago'),
('David', 'Hernandez', 29, 'New York'),
('Sara', 'Lopez', 27, 'Los Angeles'),
('Paul', 'Wilson', 45, 'Miami');

-- Example 1: Retrieve the first 5 customers
SELECT *
FROM customers
LIMIT 5;

-- Example 2: Retrieve 5 customers starting from the 6th record
SELECT *
FROM customers
LIMIT 5 OFFSET 5;

-- Example 3: Retrieve 3 customers starting from the 3rd record
SELECT *
FROM customers
LIMIT 3 OFFSET 2;

-- Example 4: Retrieve all customers but only the first 3
SELECT *
FROM customers
LIMIT 3;

-- Example 5: Combine ORDER BY with LIMIT and OFFSET
SELECT *
FROM customers
ORDER BY age DESC
LIMIT 4 OFFSET 2;
