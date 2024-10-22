# SQL Operators

## Overview
This document outlines essential SQL operators used to perform operations on data within a database. SQL operators allow you to build complex queries by combining conditions and manipulating data in various ways.

## SQL Operators

### 1. **Comparison Operators**
   - Used to compare two values.
   - Examples:
     - **Equal to**:
       ```sql
       SELECT * FROM employees WHERE salary = 50000;
       ```
     - **Not equal to**:
       ```sql
       SELECT * FROM employees WHERE salary <> 50000;
       ```
     - **Greater than**:
       ```sql
       SELECT * FROM employees WHERE salary > 50000;
       ```
     - **Less than**:
       ```sql
       SELECT * FROM employees WHERE salary < 50000;
       ```
     - **Greater than or equal to**:
       ```sql
       SELECT * FROM employees WHERE salary >= 50000;
       ```
     - **Less than or equal to**:
       ```sql
       SELECT * FROM employees WHERE salary <= 50000;
       ```

### 2. **Logical Operators**
   - Used to combine multiple conditions.
   - Examples:
     - **AND**: 
       ```sql
       SELECT * FROM employees WHERE department = 'Sales' AND salary > 50000;
       ```
     - **OR**: 
       ```sql
       SELECT * FROM employees WHERE department = 'Sales' OR department = 'Marketing';
       ```
     - **NOT**: 
       ```sql
       SELECT * FROM employees WHERE NOT department = 'Sales';
       ```

### 3. **IN Operator**
   - Used to specify multiple values in a WHERE clause.
   - Example:
     ```sql
     SELECT * FROM employees WHERE department IN ('Sales', 'Marketing');
     ```

### 4. **BETWEEN Operator**
   - Used to filter the result set within a specific range.
   - Example:
     ```sql
     SELECT * FROM employees WHERE salary BETWEEN 40000 AND 60000;
     ```

### 5. **LIKE Operator**
   - Used for pattern matching.
   - Example:
     ```sql
     SELECT * FROM employees WHERE first_name LIKE 'A%'; -- Names starting with 'A'
     ```

### 6. **IS NULL and IS NOT NULL**
   - Used to check for NULL values.
   - Examples:
     - **IS NULL**:
       ```sql
       SELECT * FROM employees WHERE bonus IS NULL;
       ```
     - **IS NOT NULL**:
       ```sql
       SELECT * FROM employees WHERE bonus IS NOT NULL;
       ```
