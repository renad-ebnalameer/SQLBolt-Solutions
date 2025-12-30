/* 
Lesson 07: OUTER JOINs
Goal:
- Learn how to work with LEFT JOIN
- Include rows even when there is no matching data

Tables used:
- Buildings
- Employees
*/

--------------------------------------------------
-- Exercise 7.1
-- Task: Find the list of all buildings that have employees
--------------------------------------------------

SELECT DISTINCT building
FROM employees;

-- Explanation:
-- Employees table only contains buildings that have employees
-- DISTINCT removes duplicate building names

--------------------------------------------------
-- Exercise 7.2
-- Task: Find the list of all buildings and their capacity
--------------------------------------------------

SELECT building_name, capacity
FROM buildings;

-- Explanation:
-- This query lists all buildings regardless of employees
-- Capacity information is stored in the Buildings table

--------------------------------------------------
-- Exercise 7.3
-- Task: List all buildings and the distinct employee roles
-- in each building (including empty buildings)
--------------------------------------------------

SELECT DISTINCT building_name, role
FROM buildings
LEFT JOIN employees
ON buildings.building_name = employees.building;

-- Explanation:
-- LEFT JOIN returns all buildings, even those without employees
-- Roles will be NULL for buildings with no employees
-- DISTINCT avoids duplicate role listings per building

--------------------------------------------------
-- Key Takeaways
--------------------------------------------------
-- 1. LEFT JOIN includes all rows from the left table
-- 2. INNER JOIN excludes rows without matches
-- 3. LEFT JOIN is useful for finding missing or empty data
-- 4. NULL values indicate no matching rows
