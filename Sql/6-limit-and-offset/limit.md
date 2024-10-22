# SQL Limit and Offset Commands

## Overview
This document outlines essential SQL commands used to control the number of records returned by a query. The `LIMIT` command restricts the number of rows returned, while the `OFFSET` command specifies how many rows to skip before starting to return rows. Together, they are often used for pagination in query results.

## SQL Limit and Offset Commands

### 1. **LIMIT**
   - Restricts the number of records returned by a query.
   - Example:
     ```sql
     SELECT column1, column2
     FROM table_name
     LIMIT number_of_rows;
     ```
   - To limit the result to 5 records:
     ```sql
     SELECT * FROM customers
     LIMIT 5;
     ```

### 2. **OFFSET**
   - Specifies the number of rows to skip before starting to return rows.
   - Example:
     ```sql
     SELECT column1, column2
     FROM table_name
     LIMIT number_of_rows OFFSET number_of_rows_to_skip;
     ```
   - To skip the first 10 records and return the next 5:
     ```sql
     SELECT * FROM customers
     LIMIT 5 OFFSET 10;
     ```

### 3. **Combining LIMIT and OFFSET**
   - These commands can be combined for effective pagination.
   - Example:
     ```sql
     SELECT *
     FROM customers
     ORDER BY last_name
     LIMIT 10 OFFSET 20;
     ```
   - This retrieves 10 customers starting from the 21st record (skipping the first 20).

