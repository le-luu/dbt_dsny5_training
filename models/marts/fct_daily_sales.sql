with int_models_cte as (
    SELECT *
    FROM {{ ref('int_successful_payments') }}
),
aggregated as (
    SELECT 
        created_at as date,
        SUM(amount) as daily_sales
    FROM int_models_cte
    GROUP BY 1
    ORDER BY 1 ASC
)
SELECT *
FROM aggregated