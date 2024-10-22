# SQL Joins

## Overview
SQL Joins are used to combine records from two or more tables in a database. Depending on the type of join, you can fetch matching or non-matching rows from related tables.

## Types of Joins

### 1. **INNER JOIN**
   - The `INNER JOIN` keyword selects records that have matching values in both tables.
   - **Syntax**:
     ```sql
     SELECT column_name(s)
     FROM table1
     INNER JOIN table2
     ON table1.column = table2.column;
     ```
   - Example:
     ```sql
     SELECT employees.name, departments.department_name
     FROM employees
     INNER JOIN departments
     ON employees.department_id = departments.id;
     ```

### 2. **LEFT JOIN (or LEFT OUTER JOIN)**
   - The `LEFT JOIN` returns all records from the left table, and the matched records from the right table. If no match exists, NULL values are returned for columns of the right table.
   - **Syntax**:
     ```sql
     SELECT column_name(s)
     FROM table1
     LEFT JOIN table2
     ON table1.column = table2.column;
     ```
   - Example:
     ```sql
     SELECT customers.name, orders.order_id
     FROM customers
     LEFT JOIN orders
     ON customers.id = orders.customer_id;
     ```

### 3. **RIGHT JOIN (or RIGHT OUTER JOIN)**
   - The `RIGHT JOIN` returns all records from the right table, and the matched records from the left table. If there is no match, NULL values are returned for the left table.
   - **Syntax**:
     ```sql
     SELECT column_name(s)
     FROM table1
     RIGHT JOIN table2
     ON table1.column = table2.column;
     ```
   - Example:
     ```sql
     SELECT employees.name, projects.project_name
     FROM employees
     RIGHT JOIN projects
     ON employees.project_id = projects.id;
     ```

### 4. **FULL OUTER JOIN**
   - The `FULL OUTER JOIN` returns all records when there is a match in either left or right table. If there is no match, NULL values are returned for non-matching records.
   - **Syntax**:
     ```sql
     SELECT column_name(s)
     FROM table1
     FULL OUTER JOIN table2
     ON table1.column = table2.column;
     ```
   - Example:
     ```sql
     SELECT employees.name, departments.department_name
     FROM employees
     FULL OUTER JOIN departments
     ON employees.department_id = departments.id;
     ```

### 5. **CROSS JOIN**
   - The `CROSS JOIN` returns the Cartesian product of both tables. It pairs each row from the first table with every row from the second table.
   - **Syntax**:
     ```sql
     SELECT column_name(s)
     FROM table1
     CROSS JOIN table2;
     ```
   - Example:
     ```sql
     SELECT employees.name, shifts.shift_time
     FROM employees
     CROSS JOIN shifts;
     ```

## Why Joins Can Be Slow on the Server

Joins can be resource-intensive, especially on large datasets or poorly optimized queries. Some of the reasons include:

1. **Data Size**:
   - Joins require the server to compare rows between tables. If tables have a large number of records, the comparison process can become very slow. For example, joining a table with millions of rows to another large table could take significant time and processing power.

2. **Non-Indexed Columns**:
   - Joins on non-indexed columns force the database to perform full table scans, making the query slower. Indexing the columns used in joins can significantly improve performance by allowing the database to quickly locate matching records.

3. **Complex Queries**:
   - Multiple joins, or joining multiple tables, increase the complexity of the query. This can require the server to perform more comparisons and process more data, slowing down the retrieval time.

4. **Network Latency**:
   - If the data is distributed across different servers or systems, network latency may contribute to the time it takes to fetch and combine the data.

5. **Memory and CPU Usage**:
   - Large joins consume more memory and CPU on the server as it has to load, process, and store the resulting datasets. This can reduce the overall performance of the server, especially if it's handling multiple join operations concurrently.

6. **Sorting and Filtering**:
   - When joins are combined with sorting (`ORDER BY`) or filtering (`WHERE`), the server may need to further process the data after performing the join. This can increase the time it takes to deliver results, especially for large datasets.

