with products as (

    select * from {{ ref('stg_products') }}

),

category_translation as (

    select * from {{ ref('stg_product_category_translation') }}

)

select
    p.product_id,
    p.product_category_name,
    coalesce(c.product_category_name_english, p.product_category_name) as product_category_english,
    p.product_weight_g,
    p.product_length_cm,
    p.product_height_cm,
    p.product_width_cm

from products p
left join category_translation c
    on p.product_category_name = c.product_category_name