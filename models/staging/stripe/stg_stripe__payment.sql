-- source import

WITH source as
(
    SELECT *
    FROM raw.stripe.payment
),
--final CTE
renamed as (
    SELECT 
        id as payment_id,
        orderid as order_id,
        paymentmethod as payment_method,
        status,
        amount,
        created as created_at,
        _batched_at
    from source
)
SELECT *
FROM source