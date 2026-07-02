-- Semantic view: Customer Lifetime Metrics
-- Purpose: Encapsulates customer-level lifetime value logic for broad self-serve consumption
-- Downstream users: Analysts, Data Scientists, Product Managers
-- Sources: DBT_YMA.DIM_CUSTOMERS, DBT_YMA.FCT_ORDERS

CREATE OR REPLACE VIEW OLIST_ECOMMERCE.DBT_YMA.customer_lifetime_metrics AS
SELECT
    c.customer_id,
    c.customer_city,
    c.customer_state,
    COUNT(o.order_id)               AS total_orders,
    SUM(o.total_payment_value)      AS lifetime_value,
    MIN(o.order_purchase_at)        AS first_purchase_date,
    MAX(o.order_purchase_at)        AS last_purchase_date
FROM OLIST_ECOMMERCE.DBT_YMA.DIM_CUSTOMERS c
JOIN OLIST_ECOMMERCE.DBT_YMA.FCT_ORDERS o
    USING (customer_id)
GROUP BY c.customer_id, c.customer_city, c.customer_state;
