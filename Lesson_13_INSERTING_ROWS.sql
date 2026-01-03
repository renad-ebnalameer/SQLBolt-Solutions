/* 
Lesson 13: Inserting rows
Goal:
- Learn how to add new records into database tables

Tables used:
- Movies
- Boxoffice
*/

--------------------------------------------------
-- Exercise 13.1
-- Task: Add the studio's new production,
-- Toy Story 4 to the list of movies
--------------------------------------------------

INSERT INTO movies (id, title, director, year, length_minutes)
VALUES (4, "Toy Story 4", "El Directore", 2015, 90);

-- Explanation:
-- INSERT INTO adds a new row to the Movies table
-- Values are inserted in the same order as the columns
-- The movie id is explicitly defined

--------------------------------------------------
-- Exercise 13.2
-- Task: Add BoxOffice data for Toy Story 4
-- Rating: 8.7
-- Domestic sales: 340 million
-- International sales: 270 million
--------------------------------------------------

INSERT INTO boxoffice
VALUES (4, 8.7, 340000000, 270000000);

-- Explanation:
-- VALUES are inserted directly without specifying column names
-- The movie_id must match the id in the Movies table
-- This links Toy Story 4 to its box office data

--------------------------------------------------
-- Key Takeaways
--------------------------------------------------
-- 1. INSERT INTO can explicitly define column names
-- 2. IDs can be manually assigned
-- 3. Column order matters when column names are omitted
-- 4. This method is useful for simple inserts
