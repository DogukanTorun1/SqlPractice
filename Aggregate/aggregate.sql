-- Query the sum of film durations
SELECT SUM(duration) as total_duration
FROM films;

-- Calculate the average duration of all films
SELECT AVG(duration) as average_duration
FROM films;

-- Find the latest release_year
SELECT MAX(release_year) as latest_year
FROM films;

-- Calculate the sum of gross from the year 2000 or later
SELECT SUM(gross) as total_gross
FROM films
WHERE release_year >= 2000;

-- Calculate the average gross of films that start with A
SELECT AVG(gross) as avg_gross_A
FROM films
WHERE title LIKE ('A%');

-- Calculate the lowest gross film in 1994
SELECT MIN(gross) as lowest_gross
FROM films
WHERE release_year = 1994;

-- Calculate the highest gross film released between 2000-2012
SELECT MAX(gross) as highest_gross
FROM films
WHERE release_year BETWEEN 2000 AND 2012;

-- Round the average number of facebook_likes to one decimal place
SELECT ROUND(AVG(facebook_likes), 1) as avg_facebook_likes
FROM reviews

-- Calculate the average budget rounded to the thousands
SELECT ROUND((AVG(budget)) , -3) as avg_budget_thousands
FROM films

-- Calculate the title and duration_hours from films
SELECT title, (duration / 60.0) as duration_hours
FROM films;

-- Calculate the percentage of people who are no longer alive
SELECT Count(deathdate) * 100.0 / Count(name)  AS percentage_dead
FROM people;

-- Calculate the percentage of people who are no longer alive
SELECT Count(deathdate) * 100.0 / Count(name)  AS percentage_dead
FROM people;
