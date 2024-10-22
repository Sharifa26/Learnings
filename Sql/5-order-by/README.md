# SQL Order By Command

## Overview
This document outlines the `ORDER BY` command, which is used to sort the result set of a query in ascending or descending order. Sorting helps in organizing the data in a meaningful way, making it easier to read and analyze.

## SQL Order By Command

### 1. **ORDER BY**
   - Sorts the result set based on one or more columns.
   - Default sorting order is ascending (`ASC`), but it can be changed to descending (`DESC`).

   - Example (Ascending Order):
     ```sql
     SELECT first_name, last_name
     FROM customers
     ORDER BY last_name ASC;
     ```

   - Example (Descending Order):
     ```sql
     SELECT first_name, last_name
     FROM customers
     ORDER BY last_name DESC;
     ```

### 2. **Ordering by Multiple Columns**
   - You can sort by multiple columns by separating the column names with commas.
   - Example:
     ```sql
     SELECT first_name, last_name, city
     FROM customers
     ORDER BY city ASC, last_name DESC;
     ```

### 3. **Using ORDER BY with WHERE Clause**
   - The `ORDER BY` clause can be used alongside a `WHERE` clause to filter and sort data.
   - Example:
     ```sql
     SELECT first_name, last_name
     FROM customers
     WHERE city = 'New York'
     ORDER BY first_name ASC;
     ```
