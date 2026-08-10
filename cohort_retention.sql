-- Monthly cohort retention
-- Cohort month = customer's first purchase month.

WITH first_purchase AS (
    SELECT
        customer_unique_id,
        strftime('%Y-%m', MIN(order_purchase_timestamp)) AS cohort_month
    FROM order_customer
    GROUP BY customer_unique_id
),
activity AS (
    SELECT DISTINCT
        o.customer_unique_id,
        f.cohort_month,
        strftime('%Y-%m', o.order_purchase_timestamp) AS activity_month
    FROM order_customer o
    JOIN first_purchase f USING(customer_unique_id)
)
SELECT
    cohort_month,
    activity_month,
    COUNT(DISTINCT customer_unique_id) AS active_customers
FROM activity
GROUP BY cohort_month, activity_month
ORDER BY cohort_month, activity_month;
