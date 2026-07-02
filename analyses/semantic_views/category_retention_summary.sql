-- Semantic view: Category Retention Summary
-- Purpose: Surfaces category-level repeat purchase rates for self-serve retention analysis
-- Downstream users: Analysts, Product Managers
-- Source: DBT_YMA.MART_CATEGORY_RETENTION

CREATE OR REPLACE VIEW OLIST_ECOMMERCE.DBT_YMA.category_retention_summary AS
SELECT
    PRODUCT_CATEGORY_NAME   AS product_category,
    TOTAL_CUSTOMERS         AS unique_customers,
    REPEAT_CUSTOMERS        AS repeat_customers,
    REPEAT_RATE_PCT         AS repeat_rate_pct
FROM OLIST_ECOMMERCE.DBT_YMA.MART_CATEGORY_RETENTION;
