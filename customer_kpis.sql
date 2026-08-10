-- Customer-level KPI table
-- Run after creating an order-level analytical table named order_customer.

SELECT
    customer_unique_id,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(order_value) AS total_revenue,
    AVG(order_value) AS avg_order_value,
    MIN(order_purchase_timestamp) AS first_purchase,
    MAX(order_purchase_timestamp) AS last_purchase
FROM order_customer
GROUP BY customer_unique_id
ORDER BY total_revenue DESC;
