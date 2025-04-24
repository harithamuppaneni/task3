-- 1_total_revenue
SELECT SUM(total_amount) AS total_revenue
        FROM orders;

-- 2_avg_order_value
SELECT AVG(total_amount) AS avg_order_value
        FROM orders;

-- 3_orders_per_customer
SELECT c.name, COUNT(o.order_id) AS total_orders
        FROM customers c
        JOIN orders o ON c.customer_id = o.customer_id
        GROUP BY c.customer_id;

-- 4_top_products_by_sales
SELECT p.product_name, SUM(oi.quantity) AS total_sold
        FROM products p
        JOIN order_items oi ON p.product_id = oi.product_id
        GROUP BY p.product_id
        ORDER BY total_sold DESC;

-- 5_avg_revenue_per_user
SELECT AVG(customer_revenue) AS avg_revenue_per_user
        FROM (
            SELECT customer_id, SUM(total_amount) AS customer_revenue
            FROM orders
            GROUP BY customer_id
        );

-- 6_view_high_value_orders
CREATE VIEW high_value_orders AS
        SELECT *
        FROM orders
        WHERE total_amount > 200;

-- 7_null_check_example
SELECT *
        FROM customers
        WHERE email IS NULL;

