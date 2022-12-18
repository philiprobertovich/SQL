-- Get database info and set lego as current db
show databases;
use lego;
show tables;
-- Selecting values
SELECT name, part_num FROM parts WHERE name LIKE '%Hair%' ORDER BY part_num DESC;
SELECT * FROM sets WHERE name LIKE '%Showdown%' AND year BETWEEN 1990 AND 2015;
SELECT p.id, p.name FROM part_categories AS p WHERE name LIKE '%Bricks%';