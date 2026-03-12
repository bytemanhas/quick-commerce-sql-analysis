CREATE DATABASE quick_commerce;
USE quick_commerce;

SELECT * 
FROM qcommerce_customers
LIMIT 10;

SELECT COUNT(*) AS total_orders
FROM qcommerce_orders;

SELECT AVG(delivery_time_minutes) AS avg_delivery_time
FROM qcommerce_orders;

	
SELECT c.city,
COUNT(o.order_id) AS total_orders
FROM qcommerce_orders AS o
JOIN qcommerce_customers AS c
ON o.customer_id = c.customer_id
GROUP BY c.city
ORDER BY total_orders DESC;


SELECT p.category,
SUM(oi.quantity * p.price) AS total_revenue
FROM qcommerce_order_items AS oi
JOIN qcommerce_products AS p
ON oi.product_id = p.product_id
GROUP BY p.category
ORDER BY total_revenue DESC;


SELECT c.customer_name,
COUNT(o.order_id) AS total_orders
FROM qcommerce_orders AS o
JOIN qcommerce_customers AS c
ON o.customer_id = c.customer_id
GROUP BY c.customer_name
ORDER BY total_orders DESC;


SELECT COUNT(*) AS total_customers
FROM qcommerce_customers;  

SELECT p.product_name,
SUM(oi.quantity) AS total_quantity_sold
FROM qcommerce_order_items AS oi
JOIN qcommerce_products AS p
ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_quantity_sold DESC;