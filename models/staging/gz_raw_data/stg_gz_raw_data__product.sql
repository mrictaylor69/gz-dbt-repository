with 

source as (

    select * from {{ source('gz_raw_data', 'product') }}

),

renamed as (

    select
        products_id,
        purchSE_PRICE AS purchase_price

    from source

)

select * from renamed
