
SELECT customer_id
FROM {{ ref('customer_tgt') }}
GROUP BY customer_id
