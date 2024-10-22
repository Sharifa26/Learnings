-- Sample SQL Definitions for SELECT and WHERE Commands

-- 1. SELECT Command
-- The SELECT command is used to retrieve data from one or more tables in a database.
-- It allows you to specify which columns of data you want to fetch.

-- Example of SELECT command:
SELECT first_name, last_name FROM employees;

-- This example retrieves the first_name and last_name columns from the employees table.

-- 2. WHERE Clause
-- The WHERE clause is used in conjunction with the SELECT command to filter results based on specific conditions.
-- It allows you to specify criteria that the returned data must meet.

-- Example of SELECT with WHERE clause:
SELECT * FROM employees WHERE department = 'Sales';

-- This example fetches all columns from the employees table but only for records 
-- where the department is 'Sales'.
