-- Create a new table named 'users'
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    age INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert some dummy data into the 'users' table
INSERT INTO users (name, email, age)
VALUES 
    ('John Doe', 'john@example.com', 28),
    ('Jane Smith', 'jane@example.com', 34),
    ('Alice Johnson', 'alice@example.com', 25);

-- Create a new table named 'orders'
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- Insert some dummy data into the 'orders' table
INSERT INTO orders (user_id, order_date, amount)
VALUES 
    (1, '2024-10-01', 150.00),
    (2, '2024-10-05', 230.50),
    (1, '2024-10-10', 99.99);

-- Modify the 'users' table to add a new column 'status'
ALTER TABLE users
ADD COLUMN status VARCHAR(20) DEFAULT 'active';

-- Update the dummy data to include the new 'status' column
UPDATE users
SET status = 'inactive'
WHERE id = 2;
-- Drop the 'orders' table if it exists
DROP TABLE IF EXISTS orders;

-- Rename the 'users' table to 'customers'
RENAME TABLE users TO customers;

-- Select all data from the 'customers' table to verify the changes
SELECT * FROM customers;
