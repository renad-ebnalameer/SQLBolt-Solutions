/* 
Lesson 14: Updating rows
Goal:
- Learn how to modify existing records using UPDATE

Table used:
- Movies
*/

--------------------------------------------------
-- Exercise 14.1
-- Task: The director for A Bug's Life is incorrect,
-- it was actually directed by John Lasseter
--------------------------------------------------

UPDATE movies
SET director = "John Lasseter"
WHERE id = 2;

-- Explanation:
-- UPDATE modifies existing rows in a table
-- Using the id ensures the update targets the correct record
-- This reduces the risk of updating multiple rows

--------------------------------------------------
-- Exercise 14.2
-- Task: The year that Toy Story 2 was released
-- is incorrect, it was actually released in 1999
--------------------------------------------------

UPDATE movies
SET year = 1999
WHERE id = 3;

-- Explanation:
-- The record is updated using its unique id
-- Before updating, a SELECT query can be used to find the correct id:
-- SELECT id, title
-- FROM movies
-- WHERE title = "Toy Story 2";
-- This approach improves accuracy and reduces mistakes

--------------------------------------------------
-- Exercise 14.3
-- Task: Both the title and director for Toy Story 8
-- are incorrect
-- Correct title: Toy Story 3
-- Correct director: Lee Unkrich
--------------------------------------------------

UPDATE movies
SET title = "Toy Story 3",
    director = "Lee Unkrich"
WHERE id = 11;

-- Explanation:
-- Multiple columns can be updated in a single query
-- Using id is safer than relying on text fields
-- This is a best practice in real-world databases

--------------------------------------------------
-- Key Takeaways
--------------------------------------------------
-- 1. UPDATE modifies existing rows
-- 2. WHERE is critical to avoid full-table updates
-- 3. Using primary keys (id) improves precision
-- 4. Running SELECT before UPDATE helps prevent errors
