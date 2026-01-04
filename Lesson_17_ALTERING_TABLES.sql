/* 
Lesson 17: Altering tables
Goal:
- Learn how to modify existing tables using ALTER TABLE

Table altered:
- Movies
*/

--------------------------------------------------
-- Exercise 17.1
-- Task: Add a column named Aspect_ratio
-- with a FLOAT data type
--------------------------------------------------

ALTER TABLE movies
ADD COLUMN Aspect_ratio FLOAT;

-- Explanation:
-- ALTER TABLE is used to modify an existing table
-- ADD COLUMN adds a new column to the table
-- FLOAT is used to store decimal values

--------------------------------------------------
-- Exercise 17.2
-- Task: Add a column named Language
-- with a TEXT data type
-- Default value should be English
--------------------------------------------------

ALTER TABLE movies
ADD COLUMN Language TEXT DEFAULT "English";

-- Explanation:
-- A new TEXT column is added to store movie language
-- DEFAULT sets the value to "English" for existing and new rows

--------------------------------------------------
-- Key Takeaways
--------------------------------------------------
-- 1. ALTER TABLE modifies an existing table structure
-- 2. ADD COLUMN appends new columns to a table
-- 3. DEFAULT values are automatically filled
--    for existing rows when a new column is added
-- 4. ALTER TABLE changes the table schema,
--    so changes should be planned carefully
