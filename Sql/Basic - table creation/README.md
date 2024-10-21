# SQL Table Commands

## Overview
This document outlines essential SQL commands used to create, modify, and delete tables in a database. Managing tables is a key part of working with relational databases, as tables store the actual data.

## SQL Table Commands

### 1. **CREATE TABLE**
   - Creates a new table in the database.
   - Example:
     ```sql
     CREATE TABLE table_name (
       column1 datatype,
       column2 datatype,
       column3 datatype
     );
     ```

### 2. **ALTER TABLE**
   - Modifies an existing table by adding, modifying, or dropping columns.
   - Examples:
     - **Add a new column**:
       ```sql
       ALTER TABLE table_name
       ADD column_name datatype;
       ```
     - **Modify a column**:
       ```sql
       ALTER TABLE table_name
       MODIFY column_name datatype;
       ```
     - **Drop a column**:
       ```sql
       ALTER TABLE table_name
       DROP COLUMN column_name;
       ```

### 3. **DROP TABLE**
   - Deletes a table and all the data inside it.
   - Example:
     ```sql
     DROP TABLE table_name;
     ```

### 4. **RENAME TABLE**
   - Renames an existing table.
   - Example:
     ```sql
     RENAME TABLE old_table_name TO new_table_name;
     ```

