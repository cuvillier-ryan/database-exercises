USE employees;

-- In your script, use DISTINCT to find the unique titles in the
-- titles table. Your results should look like:
-- Senior Engineer
-- Staff
-- Engineer
-- Senior Staff
-- Assistant Engineer
-- Technique Leader
-- Manager

SELECT DISTINCT title
FROM titles;

-- Find your query for employees who's last names start and end with 'E'.

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY last_name;

SELECT DISTINCT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY first_name, last_name;

-- Find the unique last names with a 'q' but not 'qu'. Your results
-- should be:

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';

-- Add a COUNT() to your results and use ORDER BY to make it easier to find
-- employees whose unusual name is shared with others.

SELECT last_name, COUNT(*)
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY COUNT(*) DESC;

SELECT COUNT(*), gender FROM employees
WHERE first_name IN ('Irena', 'Vidya','Maya')
GROUP BY gender;





