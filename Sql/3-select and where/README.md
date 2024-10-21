# SQL Select and Where Commands

## Overview
This document outlines essential SQL commands used to retrieve data from a database. The `SELECT` command is the primary way to fetch data, while the `WHERE` clause allows for filtering records based on specific conditions.

## SQL Select and Where Commands

### 1. **SELECT**
   - Retrieves data from one or more tables.
   - Example:
     ```sql
     SELECT column1, column2
     FROM table_name;
     ```

   - To select all columns:
     ```sql
     SELECT * FROM table_name;
     ```

### 2. **WHERE**
   - Filters records based on specified conditions.
   - Example:
     ```sql
     SELECT column1, column2
     FROM table_name
     WHERE condition;
     ```

   - To filter results:
     ```sql
     SELECT * FROM customers
     WHERE age > 30;
     ```
