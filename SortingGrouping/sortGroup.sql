-- Select name from people and sort alphabetically
SELECT name
FROM people
ORDER BY people

-- Select the title and duration from longest to shortest film
SELECT title, duration
FROM films
ORDER BY duration DESC

-- Select the release year, duration, and title sorted by release year and duration
SELECT release_year, duration, title
FROM films
ORDER BY release_year, duration

-- Find the release_year and film_count of each year
SELECT release_year, COUNT(title) as film_count
FROM films
GROUP BY release_year

-- Find the release_year and average duration of films for each year
SELECT release_year, AVG(duration) as avg_duration
FROM films
GROUP BY release_year

-- Find the release_year, country, and max_budget, then group and order by release_year and country
SELECT release_year, country, MAX(budget) as max_budget
FROM films
GROUP BY release_year, country
ORDER BY release_year, country

--Which release_year had the most language diversity?
SELECT release_year, COUNT(DISTINCT language)
FROM films
GROUP BY release_year
ORDER BY COUNT DESC

-- Select the country and distinct count of certification as certification_count, Group by country, Filter results to countries with more than 10 different certifications
SELECT country, COUNT(distinct certification) as certification_count
FROM films
GROUP BY country
HAVING COUNT(distinct certification) > 10

-- Select the country and average_budget from films, Group by country, Filter to countries with an average_budget of more than one billion, Order by descending order of the aggregated budget
SELECT country, AVG(budget) as average_budget
FROM films
GROUP BY country
HAVING AVG(budget) > 1000000000
ORDER BY average_budget DESC

