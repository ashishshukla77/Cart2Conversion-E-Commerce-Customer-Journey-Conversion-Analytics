-- RFM base table
-- Reference date is one day after the maximum purchase date.

WITH customer_rfm AS (
    SELECT
        customer_unique_id,
        CAST(julianday((SELECT MAX(order_purchase_timestamp) FROM order_customer)) -
             julianday(MAX(order_purchase_timestamp)) AS INTEGER) AS recency,
        COUNT(DISTINCT order_id) AS frequency,
        SUM(order_value) AS monetary
    FROM order_customer
    GROUP BY customer_unique_id
)
SELECT * FROM customer_rfm;
