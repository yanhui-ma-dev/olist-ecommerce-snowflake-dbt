with orders as (
    select * from {{ ref('fct_orders') }}
)

select
    order_status,
    count(*) as order_count,
    round(count(*) * 100.0 / sum(count(*)) over (), 2) as pct_of_total

from orders
group by order_status
order by order_count desc