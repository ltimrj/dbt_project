SELECT customer_id, COUNT(*) AS duplicate_count
FROM {{ ref('customer_tgt') }}
GROUP BY customer_id
HAVING COUNT(*) > 1