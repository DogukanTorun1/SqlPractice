-- Select film_ids and imdb_score with an imdb_score over 7.0
SELECT film_id, imdb_score
FROM reviews 
WHERE imdb_score > 7.0;

-- Select film_ids and facebook_likes for ten records with less than 1000 likes 
SELECT film_id, facebook_likes
FROM reviews 
WHERE  facebook_likes < 1000
LIMIT 10;

-- Count the records with at least 100,000 votes
SELECT Count(num_votes) as films_over_100K_votes
FROM reviews
WHERE num_votes > 100000;

-- Count the Spanish-language films
SELECT Count(language) as count_spanish
FROM films
WHERE language = 'Spanish';

-- Select the title and release_year for all German-language films released before 2000
SELECT title, release_year
FROM films
WHERE language = 'German' AND release_year < 2000;

-- Select all records for German-language films released after 2000 and before 2010
SELECT *
FROM films
WHERE language = 'German' AND release_year > 2000 AND release_year < 2010;

--Select title and release_year of films released in 1990 or 1999, which were in English or Spanish and took in more than $2,000,000 gross.
SELECT title, release_year
FROM films
WHERE (release_year = 1990 OR release_year = 1999)
	AND (language = 'English' OR language = 'Spanish')
	AND gross > 2000000;

-- Select title and release_year of all Spanish and French language films released between 1990 and 2000 with budgets over $100 million.
SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000
	AND budget > 100000000
	AND (language = 'Spanish' OR language = 'French');

-- Select the names that start with B
SELECT name
FROM people
WHERE name LIKE 'B%';

-- Select the names that have r as the second letter
SELECT name
FROM people
WHERE name LIKE '_r%'

-- Select names that don't start with A
SELECT name
FROM people
WHERE name NOT LIKE 'A%'

-- Find the title and release_year for all films over two hours in length released in 1990 and 2000
SELECT title, release_year
FROM films
WHERE release_year IN (1990, 2000) AND duration > 120;

-- Find the title and language of all films in English, Spanish, and French
SELECT title, language
FROM films
WHERE language IN ('Spanish', 'English', 'French');

-- Find the title, certification, and language all films certified NC-17 or R that are in English, Italian, or Greek
SELECT title, certification, language
FROM films
WHERE language IN ('English', 'Italian', 'Greek') AND certification IN ('R', 'NC-17');


-- Count the unique titles -- Filter to release_years to between 1990 and 1999 -- Filter to English-language films -- Narrow it down to G, PG, and PG-13 certifications
SELECT COUNT(DISTINCT title) AS nineties_english_films_for_teens
FROM films
WHERE (release_year BETWEEN 1990 AND 1999)
	AND (language = 'English')	
	AND (certification IN ('G', 'PG', 'PG-13'));

-- List all film titles with missing budgets
SELECT title AS no_budget_info
FROM films
WHERE budget IS NULL;

-- Count the number of films we have language data for
SELECT Count(language) AS count_language_known
FROM films
WHERE language IS NOT NULL;
