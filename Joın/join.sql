-- Inner join to countries, Match on country codes
SELECT * 
FROM cities
INNER JOIN countries
ON cities.country_code = countries.code;

-- Select fields with aliases, Join to economies (alias e), Match on code field using table aliases
SELECT c.code as country_code, c.name, e.year, e.inflation_rate
FROM countries AS c
INNER JOIN economies as e
ON c.code = e.code

