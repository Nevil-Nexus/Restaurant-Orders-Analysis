-- 1. Combine the menu_items and order_details tables into a single table

SELECT
    od.order_details_id,
    od.order_id,
    od.order_date,
    od.item_id,
    mi.item_name,
    mi.category,
    mi.price
FROM order_details AS od
LEFT JOIN menu_items AS mi
    ON od.item_id = mi.menu_item_id;


-- 2. What are the least and most ordered items?

SELECT
    mi.item_name,
    mi.category,
    COUNT(od.item_id) AS number_of_orders
FROM order_details AS od
LEFT JOIN menu_items AS mi
    ON od.item_id = mi.menu_item_id
GROUP BY
    mi.item_name,
    mi.category
ORDER BY number_of_orders DESC;


-- 3. What were the top 5 orders that spent the most money?

SELECT
    od.order_id,
    SUM(mi.price) AS total_spent
FROM order_details AS od
LEFT JOIN menu_items AS mi
    ON od.item_id = mi.menu_item_id
GROUP BY od.order_id
ORDER BY total_spent DESC
LIMIT 5;


-- 4. View the details of the highest spend order

WITH highest_spend_order AS (
    SELECT
        od.order_id,
        SUM(mi.price) AS total_spent
    FROM order_details AS od
    LEFT JOIN menu_items AS mi
        ON od.item_id = mi.menu_item_id
    GROUP BY od.order_id
    ORDER BY total_spent DESC
    LIMIT 1
)

SELECT
    od.order_id,
    od.order_date,
    mi.item_name,
    mi.category,
    mi.price
FROM order_details AS od
LEFT JOIN menu_items AS mi
    ON od.item_id = mi.menu_item_id
INNER JOIN highest_spend_order AS hso
    ON od.order_id = hso.order_id
ORDER BY od.order_date;


-- 5. View the details of the 5 highest spend orders

WITH top_5_orders AS (
    SELECT
        od.order_id,
        SUM(mi.price) AS total_spent
    FROM order_details AS od
    LEFT JOIN menu_items AS mi
        ON od.item_id = mi.menu_item_id
    GROUP BY od.order_id
    ORDER BY total_spent DESC
    LIMIT 5
)

SELECT
    od.order_id,
    od.order_date,
    mi.item_name,
    mi.category,
    mi.price,
    t5.total_spent
FROM order_details AS od
LEFT JOIN menu_items AS mi
    ON od.item_id = mi.menu_item_id
INNER JOIN top_5_orders AS t5
    ON od.order_id = t5.order_id
ORDER BY
    t5.total_spent DESC,
    od.order_id;