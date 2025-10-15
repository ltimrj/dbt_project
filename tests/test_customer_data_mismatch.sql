
SELECT *
FROM (
    SELECT * FROM {{ ref('customer_src') }}
    EXCEPT
    SELECT * FROM {{ ref('customer_tgt') }}
) AS mismatched
