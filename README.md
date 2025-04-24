# task3
# SQL for Data Analysis - Task 3

This repository contains SQL queries and their corresponding output screenshots for a data analysis task using a sample Ecommerce dataset on SQLite.

## Dataset Overview
The dataset consists of 4 tables:
- **customers**: Customer info
- **orders**: Orders placed by customers
- **products**: Product catalog
- **order_items**: Items included in each order

## SQL Queries & Purpose

1. **Total Revenue**
   ```sql
   SELECT SUM(total_amount) AS total_revenue FROM orders;
   ```

2. **Average Order Value**
   ```sql
   SELECT AVG(total_amount) AS avg_order_value FROM orders;
   ```

3. **Orders per Customer**
   ```sql
   SELECT c.name, COUNT(o.order_id) AS total_orders
   FROM customers c
   JOIN orders o ON c.customer_id = o.customer_id
   GROUP BY c.customer_id;
   ```

4. **Top Products by Quantity Sold**
   ```sql
   SELECT p.product_name, SUM(oi.quantity)
