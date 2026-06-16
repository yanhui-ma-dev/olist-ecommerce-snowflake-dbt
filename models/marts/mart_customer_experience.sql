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
        o.customer_id,
        c.customer_unique_id,
        o.order_status,
        o.order_purchase_at,
        o.order_delivered_customer_at,
        o.order_estimated_delivery_at,
        o.total_payment_value,
        
        case
            when o.order_delivered_customer_at <= o.order_estimated_delivery_at 
            then 'On Time'
            else 'Late'
        end as delivery_status,
        
        datediff('day', 
            o.order_estimated_delivery_at, 
            o.order_delivered_customer_at
        ) as delivery_delay_days,

        -- Use customer_unique_id to correctly identify repeat purchases
        count(*) over (partition by c.customer_unique_id) as customer_order_count

    from {{ ref('fct_orders') }} o
    left join customers c on o.customer_id = c.customer_id
    where o.order_status = 'delivered'
        and o.order_delivered_customer_at is not null
        and o.order_estimated_delivery_at is not null
),

reviews as (
    select
        order_id,
        review_score,
        case
            when review_score >= 4 then 'Positive (4-5)'
            when review_score = 3  then 'Neutral (3)'
            else                        'Negative (1-2)'
        end as review_sentiment
    from OLIST_ECOMMERCE.PUBLIC.ORDER_REVIEWS
),

final as (
    select
        o.order_id,
        o.customer_id,
        o.customer_unique_id,
        o.order_purchase_at,
        o.total_payment_value,
        o.delivery_status,
        o.delivery_delay_days,
        o.customer_order_count,
        case 
            when o.customer_order_count > 1 then 1 
            else 0 
        end as is_repeat_customer,
        r.review_score,
        r.review_sentiment
    from orders o
    left join reviews r on o.order_id = r.order_id
)

select * from final