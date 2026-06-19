{{ config(materialized='table') }}

with customers as (
    select
        customer_id,
        customer_unique_id
    from {{ ref('dim_customers') }}
),

orders as (
    select
        o.order_id,
        c.customer_unique_id,
        o.order_status,
        count(*) over (partition by c.customer_unique_id) as customer_order_count
    from {{ ref('fct_orders') }} o
    left join customers c on o.customer_id = c.customer_id
    where o.order_status = 'delivered'
),

order_items as (
    select
        order_id,
        product_id
    from OLIST_ECOMMERCE.PUBLIC.ORDER_ITEMS
),

products as (
    select
        product_id,
        product_category_name
    from {{ ref('dim_products') }}
    where product_category_name is not null
),

final as (
    select
        p.product_category_name,
        count(distinct o.customer_unique_id) as total_customers,
        count(distinct case when o.customer_order_count > 1 
            then o.customer_unique_id end) as repeat_customers,
        round(count(distinct case when o.customer_order_count > 1 
            then o.customer_unique_id end) * 100.0 
            / count(distinct o.customer_unique_id), 2) as repeat_rate_pct
    from orders o
    inner join order_items oi on o.order_id = oi.order_id
    inner join products p on oi.product_id = p.product_id
    group by 1
    having count(distinct o.customer_unique_id) >= 100  -- Excluding categories with too small a sample size
)

select * from final
order by repeat_rate_pct desc