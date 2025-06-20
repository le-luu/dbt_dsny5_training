WITH source as
(
    SELECT *
    FROM {{ source('jaffle_shop', 'orders') }}
),
renamed as (
    SELECT 
        id as order_id,
        user_id,
        order_date,
        status,
        _etl_loaded_at
    FROM source
)
SELECT *
FROM renamed