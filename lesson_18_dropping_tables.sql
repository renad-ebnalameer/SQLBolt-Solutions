/* 
Lesson 18: Dropping tables
Goal:
- Learn how to permanently remove tables from a database

Tables used:
- Movies
- BoxOffice
*/

--------------------------------------------------
-- Exercise 18.1
-- Task: Remove the Movies table
--------------------------------------------------

DROP TABLE movies;

-- Explanation:
-- DROP TABLE permanently deletes the table
-- This removes both the table structure and all its data
-- This action cannot be undone

--------------------------------------------------
-- Exercise 18.2
-- Task: Remove the BoxOffice table
--------------------------------------------------

DROP TABLE boxoffice;

-- Explanation:
-- The BoxOffice table is dropped as part of cleanup
-- Always drop dependent tables first to avoid errors

--------------------------------------------------
-- Key Takeaways
--------------------------------------------------
-- 1. DROP TABLE permanently removes a table and its data
-- 2. This operation is irreversible
-- 3. Be careful when dropping tables in real databases
-- 4. Drop dependent tables before parent tables when relationships exist
