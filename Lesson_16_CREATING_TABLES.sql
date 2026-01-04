/* 
Lesson 16: Creating tables
Goal:
- Learn how to create new tables using CREATE TABLE

Table created:
- Database
*/

--------------------------------------------------
-- Exercise 16.1
-- Task: Create a new table named Database
--------------------------------------------------

CREATE TABLE Database (
    Name TEXT,
    Version FLOAT,
    Download_count INTEGER
);

-- Explanation:
-- CREATE TABLE defines a new table
-- TEXT is used for string values
-- FLOAT stores floating point numbers
-- INTEGER stores whole numbers
-- No constraints are applied as specified

--------------------------------------------------
-- Key Takeaways
--------------------------------------------------
-- 1. CREATE TABLE defines table structure
-- 2. Data types depend on the database system
-- 3. Tables can be created without constraints
-- 4. This is part of database schema design

-- 5. Every table has a schema that defines its structure:
--    column_name | DataType | TableConstraint | DEFAULT value
--
-- 6. Common table data types:
--    - INTEGER
--    - BOOLEAN
--    - FLOAT / DOUBLE / REAL
--    - CHAR(num_chars)
--    - VARCHAR(num_chars)
--    - TEXT
--    - DATE
--    - DATETIME
--    - BLOB
--
-- 7. Common table constraints:
--    - PRIMARY KEY
--    - AUTOINCREMENT
--    - UNIQUE
--    - NOT NULL
--    - CHECK (expression)
--    - FOREIGN KEY
--
-- 8. Constraints help enforce data integrity
-- 9. Schema design is as important as writing queries
