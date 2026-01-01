/* 
Lesson 10: Aggregate functions
Goal:
- Learn how to summarize data using aggregate functions

Tables used:
- Employees
*/

--------------------------------------------------
-- Exercise 10.1
-- Task: Find the longest time that an employee
-- has been at the studio
--------------------------------------------------

SELECT 
    MAX(years_employed) AS longest_time_employed
FROM employees;

-- Explanation:
-- MAX() returns the highest value in a column
-- This shows the longest tenure at the studio

--------------------------------------------------
-- Exercise 10.2
-- Task: For each role, find the average number
-- of years employed by employees in that role
--------------------------------------------------

SELECT 
    role,
    AVG(years_employed) AS average_years_employed
FROM employees
GROUP BY role;

-- Explanation:
-- AVG() calculates the average value
-- GROUP BY groups employees by role before averaging

--------------------------------------------------
-- Exercise 10.3
-- Task: Find the total number of employee years
-- worked in each building
--------------------------------------------------

SELECT 
    building,
    SUM(years_employed) AS total_employee_years
FROM employees
GROUP BY building;

-- Explanation:
-- SUM() adds up all years worked
-- GROUP BY building calculates totals per building

--------------------------------------------------
-- Key Takeaways
--------------------------------------------------
-- 1. Aggregate functions summarize data
-- 2. Common aggregates: MAX, AVG, SUM
-- 3. GROUP BY is required when mixing aggregates
--    with non-aggregated columns
-- 4. Aggregates are essential for reporting
