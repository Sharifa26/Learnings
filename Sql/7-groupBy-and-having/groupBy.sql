-- Sample SQL file for GROUP BY and HAVING commands

-- Creating a sample table for demonstration
CREATE TABLE customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    age INT,
    city VARCHAR(100),
    purchase_amount DECIMAL(10, 2)
);

-- Inserting dummy data into the customers table
INSERT INTO customers (name, age, city, purchase_amount) VALUES
('Alice', 28, 'New York', 150.00),
('Bob', 34, 'Los Angeles', 200.00),
('Charlie', 22, 'New York', 300.00),
('David', 45, 'Los Angeles', 250.00),
('Eve', 29, 'Chicago', 120.00),
('Frank', 31, 'Chicago', 180.00),
('Grace', 29, 'New York', 90.00),
('Hannah', 35, 'Los Angeles', 220.00),
('Ivy', 40, 'Chicago', 130.00),
('Jack', 33, 'New York', 160.00);

-- Example 1: Grouping by city and counting total customers in each city
SELECT city, COUNT(*) AS total_customers
FROM customers
GROUP BY city;

-- Example 2: Grouping by city and getting the total purchase amount per city
SELECT city, SUM(purchase_amount) AS total_purchase
FROM customers
GROUP BY city;

-- Example 3: Grouping by age and getting the average purchase amount per age group
SELECT age, AVG(purchase_amount) AS average_purchase
FROM customers
GROUP BY age;

-- Example 4: Grouping by city and filtering groups with more than 2 customers
SELECT city, COUNT(*) AS total_customers
FROM customers
GROUP BY city
HAVING COUNT(*) > 2;

-- Example 5: Grouping by city and filtering to get cities with an average purchase amount greater than 150
SELECT city, AVG(purchase_amount) AS average_purchase
FROM customers
GROUP BY city
HAVING AVG(purchase_amount) > 150;

-- Example 6: Grouping by age and using HAVING to find ages with more than 1 customer
SELECT age, COUNT(*) AS total_customers
FROM customers
GROUP BY age
HAVING COUNT(*) > 1;

-- Example 7: Grouping by city and filtering cities with total purchases over 500
SELECT city, SUM(purchase_amount) AS total_purchase
FROM customers
GROUP BY city
HAVING SUM(purchase_amount) > 500;

-- Example 8: Grouping by city and age to count customers in each age group per city
SELECT city, age, COUNT(*) AS total_customers
FROM customers
GROUP BY city, age
HAVING COUNT(*) > 1;

-- Clean up: Drop the customers table if needed
-- DROP TABLE customers;
