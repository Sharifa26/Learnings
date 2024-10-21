-- Sample SQL file for ORDER BY command

-- Creating a sample customers table
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    city VARCHAR(50),
    age INT
);

-- Inserting dummy data into the customers table
INSERT INTO customers (first_name, last_name, city, age) VALUES 
('John', 'Doe', 'New York', 28),
('Jane', 'Smith', 'Los Angeles', 34),
('Alice', 'Johnson', 'Chicago', 22),
('Bob', 'Brown', 'New York', 45),
('Charlie', 'Davis', 'Los Angeles', 29);

-- Example 1: Sort by last name in ascending order
SELECT first_name, last_name
FROM customers
ORDER BY last_name ASC;

-- Example 2: Sort by last name in descending order
SELECT first_name, last_name
FROM customers
ORDER BY last_name DESC;

-- Example 3: Order by multiple columns (city ASC, last name DESC)
SELECT first_name, last_name, city
FROM customers
ORDER BY city ASC, last_name DESC;

-- Example 4: Using ORDER BY with WHERE clause (sort by first name where city is New York)
SELECT first_name, last_name
FROM customers
WHERE city = 'New York'
ORDER BY first_name ASC;

-- Example 5: Order by age in descending order
SELECT first_name, last_name, age
FROM customers
ORDER BY age DESC;
