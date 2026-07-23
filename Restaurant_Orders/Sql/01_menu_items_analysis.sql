USE restaurant_db;

-- 1. View the menu_items table.
SELECT *
FROM menu_items;

-- 2. Find the number of items on the menu
SELECT COUNT(*)
FROM menu_items;

-- 3. What are the least and most expensive items on the menu?
SELECT *
FROM menu_items
ORDER BY price ASC;

SELECT *
FROM menu_items
ORDER BY price DESC;

-- 4. How many Italian dishes are on the menu?
SELECT COUNT(*)
FROM menu_items
WHERE category = 'Italian';

-- 5. What are the least and most expensive Italian dishes?
SELECT *
FROM menu_items
WHERE category = 'Italian'
ORDER BY price ASC;

SELECT *
FROM menu_items
WHERE category = 'Italian'
ORDER BY price DESC;

-- 6. How many dishes are in each category?
SELECT category, COUNT(*) AS number_of_dishes
FROM menu_items
GROUP BY category;

-- 7. What is the average dish price within each category?
SELECT category, AVG(price) AS average_price
FROM menu_items
GROUP BY category;