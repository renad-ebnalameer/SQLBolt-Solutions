/* 
Lesson 05: Review 1
Goal:
- Practice SELECT, WHERE, ORDER BY, LIMIT, and OFFSET together

Table used:
- north_american_cities
*/

--------------------------------------------------
-- Exercise 5.1
-- Task: List all the Canadian cities and their populations
--------------------------------------------------

SELECT city, population
FROM north_american_cities
WHERE country = 'Canada';

-- Explanation:
-- WHERE filters rows to only include cities in Canada
-- SELECT specifies the city name and population

--------------------------------------------------
-- Exercise 5.2
-- Task: Order all the cities in the United States 
-- by their latitude from north to south
--------------------------------------------------

SELECT city, latitude
FROM north_american_cities
WHERE country = 'United States'
ORDER BY latitude DESC;

-- Explanation:
-- Higher latitude values are further north
-- ORDER BY DESC sorts from north to south

--------------------------------------------------
-- Exercise 5.3
-- Task: List all the cities west of Chicago, 
-- ordered from west to east
--------------------------------------------------

SELECT city, longitude
FROM north_american_cities
WHERE longitude < -87.6298
ORDER BY longitude ASC;

-- Explanation:
-- Cities west of Chicago have a longitude less than Chicago's
-- ORDER BY ASC sorts from west to east

--------------------------------------------------
-- Exercise 5.4
-- Task: List the two largest cities in Mexico (by population)
--------------------------------------------------

SELECT city, population
FROM north_american_cities
WHERE country = 'Mexico'
ORDER BY population DESC
LIMIT 2;

-- Explanation:
-- ORDER BY population DESC sorts from largest to smallest
-- LIMIT returns only the top 2 cities

--------------------------------------------------
-- Exercise 5.5
-- Task: List the third and fourth largest cities 
-- (by population) in the United States and their population
--------------------------------------------------

SELECT city, population
FROM north_american_cities
WHERE country = 'United States'
ORDER BY population DESC
LIMIT 2 OFFSET 2;

-- Explanation:
-- OFFSET skips the first two largest cities
-- LIMIT then returns the next two cities

--------------------------------------------------
-- Key Takeaways
--------------------------------------------------
-- 1. WHERE filters rows based on conditions
-- 2. ORDER BY controls sorting direction (ASC / DESC)
-- 3. LIMIT restricts the number of returned rows
-- 4. OFFSET skips a specified number of rows
-- 5. Combining these clauses solves real-world queries
