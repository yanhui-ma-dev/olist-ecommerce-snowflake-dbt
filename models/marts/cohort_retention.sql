with customer_orders as (
    select * from {{ ref('int_customer_orders') }}
),

cohort_size as (
    select
        cohort_month,
        count(distinct customer_unique_id) as num_customers

    from customer_orders
    where period_number = 0
    group by cohort_month
),

period_activity as (
    select
        cohort_month,
        period_number,
        count(distinct customer_unique_id) as active_customers

    from customer_orders
    group by cohort_month, period_number
),

periods as (
    select row_number() over (order by seq4()) - 1 as period_number
    from table(generator(rowcount => 25))  -- 0~24 ,~2 years
),

spine as (
    select
        c.cohort_month,
        c.num_customers as cohort_size,
        p.period_number
    from cohort_size c
    cross join periods p
)

select
    s.cohort_month,
    s.period_number,
    s.cohort_size,
    coalesce(pa.active_customers, 0) as active_customers,
    round(coalesce(pa.active_customers, 0) * 100.0 / s.cohort_size, 2) as retention_rate

from spine s
left join period_activity pa
    on s.cohort_month = pa.cohort_month
    and s.period_number = pa.period_number

order by s.cohort_month, s.period_number