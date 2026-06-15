with orders as (
    select * from {{ ref('fct_orders') }}
),

customers as (
    select * from {{ ref('dim_customers') }}
),

joined as (
    select
        c.customer_unique_id,
        o.order_id,
        o.order_purchase_at,
        date_trunc('month', o.order_purchase_at) as order_month

    from orders o
    left join customers c
        on o.customer_id = c.customer_id

),

first_order as (
    select
        customer_unique_id,
        min(order_month) as cohort_month
    from joined
    group by customer_unique_id
)

select
    j.customer_unique_id,
    j.order_id,
    j.order_month,
    f.cohort_month,
    datediff('month', f.cohort_month, j.order_month) as period_number

from joined j
left join first_order f
    on j.customer_unique_id = f.customer_unique_id