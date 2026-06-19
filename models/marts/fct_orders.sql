with orders as (

    select * from {{ ref('stg_orders') }}

),

order_items as (

    select * from {{ ref('stg_order_items') }}

),

order_payments as (

    select * from {{ ref('stg_order_payments') }}

),

item_summary as (

    select
        order_id,
        count(*) as num_items,
        sum(price) as total_item_price,
        sum(freight_value) as total_freight_value

    from order_items
    group by order_id

),

payment_summary as (

    select
        order_id,
        sum(payment_value) as total_payment_value

    from order_payments
    group by order_id

)

select
    o.order_id,
    o.customer_id,
    o.order_status,
    o.order_purchase_at,
    o.order_approved_at,
    o.order_delivered_carrier_at,
    o.order_delivered_customer_at,
    o.order_estimated_delivery_at,
    coalesce(i.num_items, 0) as num_items,
    coalesce(i.total_item_price, 0) as total_item_price,
    coalesce(i.total_freight_value, 0) as total_freight_value,
    coalesce(p.total_payment_value, 0) as total_payment_value

from orders o
left join item_summary i on o.order_id = i.order_id
left join payment_summary p on o.order_id = p.order_id