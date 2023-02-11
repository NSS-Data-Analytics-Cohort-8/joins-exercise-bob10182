-- ** How to import your data. **

-- 1. In PgAdmin, right click on Databases (under Servers -> Postgresql 15). Hover over Create, then click Database.

-- 2. Enter in the name ‘Joins’ (not the apostrophes). Click Save.

-- 3. Left click the server ‘Joins’. Left click Schemas. 

-- 4. Right click public and select Restore.

-- 5. Select the folder icon in the filename row. Navigate to the data folder of your repo and select the file movies.backup. Click Restore.


-- ** Movie Database project. See the file movies_erd for table\column info. **

-- 1. Give the name, release year, and worldwide gross of the lowest grossing movie.
SELECT p1.movie_id,p1.film_title, p1.release_year,p2.worldwide_gross
FROM specs AS p1
JOIN revenue AS p2
ON p1.movie_id = p2.movie_id
ORDER BY p2.worldwide_gross ASC
LIMIT 1;
--ANSWER: Semi-Tough, 1977, worldwide gross $37,187,139

-- 2. What year has the highest average imdb rating?
SELECT p1.movie_id,p1.release_year,AVG(p2.imdb_rating) AS avg_rating
FROM specs AS p1
JOIN rating AS p2
ON p1.movie_id = p2.movie_id
GROUP BY p1.movie_id,p1.release_year
ORDER BY AVG(p2.imdb_rating) DESC
LIMIT 1;
--ANSWER: 2008

-- 3. What is the highest grossing G-rated movie? Which company distributed it?

-- 4. Write a query that returns, for each distributor in the distributors table, the distributor name and the number of movies associated with that distributor in the movies 
-- table. Your result set should include all of the distributors, whether or not they have any movies in the movies table.

-- 5. Write a query that returns the five distributors with the highest average movie budget.

-- 6. How many movies in the dataset are distributed by a company which is not headquartered in California? Which of these movies has the highest imdb rating?

-- 7. Which have a higher average rating, movies which are over two hours long or movies which are under two hours?