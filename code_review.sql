-- Get database info and set lego as current db
show databases;
use lego;
show tables;

-- Selecting values
SELECT name, part_num FROM parts WHERE name LIKE '%Hair%' ORDER BY part_num DESC;
SELECT * FROM sets WHERE name LIKE '%Showdown%' AND year BETWEEN 1990 AND 2015;
SELECT p.id, p.name FROM part_categories AS p WHERE name LIKE '%Bricks%';

-- Subqueries
SELECT *
FROM sets
WHERE theme_id IN (SELECT id FROM themes WHERE name IN ('Pirates', 'Star Wars'));
SELECT * 
FROM inventory_parts
WHERE inventory_id IN (SELECT id FROM inventories WHERE version > 1) LIMIT 10;

-- Manipulate Values in Select
SELECT s.year, UPPER(CONCAT(s.name, '!!!')) FROM sets AS s WHERE name LIKE '%Batman%';
SELECT quantity * 2 FROM inventory_parts WHERE quantity > 1 ORDER BY quantity LIMIT 20;

-- Aggregation Functions
SELECT COUNT(is_trans) FROM colors WHERE is_trans = 1;
SELECT SUM(num_parts) FROM sets WHERE year >= 2000;
SELECT AVG(num_parts) FROM sets WHERE year >= 2000;
SELECT theme_id, AVG(num_parts) FROM sets GROUP BY theme_id;