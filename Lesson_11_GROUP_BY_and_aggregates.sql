/* 
Lesson 11: Queries with aggregates (Pt. 2)
Goal:
- Learn how to group data and filter grouped results

Table used:
- Employees
*/

--------------------------------------------------
-- Exercise 11.1
-- Task: Find the number of Artists in the studio
-- (without a HAVING clause)
--------------------------------------------------

SELECT role, COUNT(*) AS Number_of_artists
FROM employees
WHERE role = "Artist";

-- Explanation:
-- WHERE filters the rows to include only Artists
-- COUNT(*) counts the number of matching employees

--------------------------------------------------
-- Exercise 11.2
-- Task: Find the number of Employees of each role
-- in the studio
--------------------------------------------------

SELECT role, COUNT(*) AS number_of_employees
FROM employees
GROUP BY role;

-- Explanation:
-- GROUP BY role groups employees by their role
-- COUNT(*) counts employees in each group

--------------------------------------------------
-- Exercise 11.3
-- Task: Find the total number of years employed
-- by all Engineers
--------------------------------------------------

SELECT role, SUM(years_employed)
FROM employees
GROUP BY role
HAVING role = "Engineer";

-- Explanation:
-- GROUP BY role groups employees by their role
-- SUM() calculates the total years employed per role
-- HAVING filters the grouped result to Engineers only

--------------------------------------------------
-- Key Takeaways
--------------------------------------------------
-- 1. WHERE filters rows before grouping
-- 2. GROUP BY groups rows for aggregation
-- 3. HAVING filters grouped results
