SELECT order_date
FROM {{ ref("stg_orders")}}
WHERE SAFE.PARSE_DATE('%Y-%m-%d', SAFE_CAST(order_date AS STRING)) IS NULL