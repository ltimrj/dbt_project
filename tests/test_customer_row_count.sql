
SELECT
  CASE WHEN
    (SELECT COUNT(*) FROM {{ ref('customer') }}) =
    (SELECT COUNT(*) FROM {{ ref('customer_tgt') }})
  THEN 0 ELSE 1 END AS test_result
