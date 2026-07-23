# Restaurant Orders Analysis

## Project Overview

This project analyzes restaurant order data using SQL to explore menu items, order activity, and sales performance.

The analysis combines data from the `menu_items` and `order_details` tables to answer key business questions about the restaurant's menu and customer orders.

## Business Questions

This project answers the following questions:

* How many items are available on the menu?
* What are the least and most expensive dishes?
* How many dishes are available in each category?
* What is the average price per category?
* What is the date range of the orders?
* How many orders and items were placed?
* Which orders contained the most items?
* Which menu items were ordered the most?
* Which orders generated the highest revenue?
* What were the details of the highest-spending orders?

## Database Structure

The database contains two main tables:

### `menu_items`

Contains information about the restaurant's menu items.

| Column         | Description                          |
| -------------- | ------------------------------------ |
| `menu_item_id` | Unique identifier for each menu item |
| `item_name`    | Name of the dish                     |
| `category`     | Category of the dish                 |
| `price`        | Price of the dish                    |

### `order_details`

Contains information about customer orders.

| Column             | Description                             |
| ------------------ | --------------------------------------- |
| `order_details_id` | Unique identifier for each order detail |
| `order_id`         | Identifier of the order                 |
| `order_date`       | Date of the order                       |
| `item_id`          | Identifier of the ordered menu item     |

## Project Structure

```text
Restaurant_Orders/
│
├── database/
│   └── restaurant_db.sql
│
├── sql/
│   ├── 01_menu_items_analysis.sql
│   ├── 02_order_details_analysis.sql
│   └── 03_restaurant_sales_analysis.sql
│
└── README.md
```

## SQL Skills Demonstrated

* `SELECT`
* `WHERE`
* `LEFT JOIN`
* `INNER JOIN`
* `GROUP BY`
* `ORDER BY`
* `COUNT()`
* `SUM()`
* `AVG()`
* `MIN()`
* `MAX()`
* `HAVING`
* Subqueries
* Common Table Expressions (`WITH`)
* Aggregate functions

## Key Analysis Areas

### Menu Analysis

Analyzed menu size, dish prices, categories, Italian dishes, and average prices by category.

### Order Analysis

Analyzed the date range of the dataset, the total number of orders, the number of items ordered, and the largest orders by item count.

### Sales Analysis

Combined menu and order data to identify the most ordered items and the highest-spending orders.

## Tools Used

* MySQL
* MySQL Workbench
* GitHub

## Project Objective

The objective of this project is to practice SQL data analysis techniques and extract meaningful insights from restaurant order data.

This project demonstrates the ability to explore relational databases, join multiple tables, perform aggregations, and answer business questions using SQL.
