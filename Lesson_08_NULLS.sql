/* 
Lesson 08: Using NULLs
Goal:
- Learn how to find missing or unassigned data using NULL

Tables used:
- Employees
- Buildings
*/

--------------------------------------------------
-- Exercise 8.1
-- Task: Find the name and role of all employees
-- who have not been assigned to a building
--------------------------------------------------

SELECT name, role
FROM employees
WHERE building IS NULL;

-- Explanation:
-- IS NULL is used to check for missing values
-- This query returns employees without a building assignment

--------------------------------------------------
-- Exercise 8.2
-- Task: Find the names of the buildings that hold no employees
--------------------------------------------------

SELECT DISTINCT building_name
FROM buildings
LEFT JOIN employees
ON buildings.building_name = employees.building
WHERE role IS NULL;

-- Explanation:
-- LEFT JOIN keeps all buildings
-- Buildings with no employees will have NULL roles
-- DISTINCT avoids duplicate building names

--------------------------------------------------
-- Key Takeaways
--------------------------------------------------
-- 1. NULL represents missing or unknown values
-- 2. Use IS NULL instead of = NULL
-- 3. LEFT JOIN helps find unmatched rows
-- 4. NULL checks are common in real-world data analysis
