
-- Add an assignment with NULL due_date
INSERT INTO assignments (course_id, title, status) 
VALUES ('COMP1238', 'Assignment with no date', 'Not Started');

SELECT * FROM assignments
LIMIT 10; 

SELECT count(*) FROM courses;

SELECT min(due_date) FROM assignments;

SELECT *
FROM  courses
WHERE course_name LIKE 'Intro%';

SELECT sqlite_version();

SELECT upper('ABCxyz');

SELECT length('abcde');

SELECT 7*5;

SELECT concat('ABC', '-', 'xyz');

SELECT date();

SELECT strftime('%Y', due_date) AS Year, * 
FROM assignments;

-- SUBSTRING(string, start, length)
SELECT DISTINCT SUBSTRING(course_id, 1, 4) 
FROM courses;

-- Count how many courses there are with each prefix like 'MATH' and 'COMP'
SELECT SUBSTRING(course_id, 1, 4) AS prefix, count(*)
FROM courses
GROUP BY prefix;

SELECT *
FROM  assignments
WHERE status != 'Completed'
ORDER BY due_date;

-- Use this query as a reference for the next step
SELECT course_id, title, status, due_date
FROM assignments
WHERE status != 'Completed'	
  AND course_id LIKE 'COMM%'
  AND due_date < '2024-12-31'
ORDER BY due_date;




SELECT concat(course_name, '-' , semester)
FROM courses;

SELECT course_id, course_name, lab_time
FROM courses
GROUP BY lab_time;

SELECT course_id, title, status, due_date
FROM assignments
WHERE due_date > '2024-11-25'

SELECT length(status)
FROM assignments
GROUP BY status

SELECT course_name
FROM courses
ORDER BY course_name DESC

SELECT UPPER(course_name)
FROM courses;

SELECT title, course_id, due_date
FROM assignments
WHERE due_date LIKE '2024-09%';

SELECT title, course_id 
FROM assignments 
WHERE due_date is NULL
