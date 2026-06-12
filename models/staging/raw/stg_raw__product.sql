with 

source as (

    select * from {{ source('raw', 'product') }}

),

renamed as (

    select
        products_id,
        CAST(purchse_price AS FLOAT64) AS purchase_price,
        CAST(purchse_price AS FLOAT64) + 0.5 AS purchase_price_new
    from source

)

select * from renamed