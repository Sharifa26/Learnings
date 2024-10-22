# SQL Group By and Having Commands

## Overview
This document outlines the `GROUP BY` and `HAVING` commands in SQL, which are used for grouping records and filtering grouped records, respectively. These commands are essential for performing aggregate calculations on data.

## SQL Group By and Having Commands

### 1. **GROUP BY**
   - Groups rows that have the same values in specified columns into summary rows.
   - Commonly used with aggregate functions like `COUNT`, `SUM`, `AVG`, etc.
   - Example:
     ```sql
     SELECT city, COUNT(*) AS total_customers
     FROM customers
     GROUP BY city;
     ```

### 2. **HAVING**
   - Filters records after grouping.
   - Used to specify conditions on aggregate functions.
   - Example:
     ```sql
     SELECT city, COUNT(*) AS total_customers
     FROM customers
     GROUP BY city
     HAVING COUNT(*) > 2;
     ```

### 3. **Combining GROUP BY and HAVING**
   - You can use `GROUP BY` to aggregate data and `HAVING` to filter those results.
   - Example:
     ```sql
     SELECT city, AVG(age) AS average_age
     FROM customers
     GROUP BY city
     HAVING AVG(age) > 30;
     ```
