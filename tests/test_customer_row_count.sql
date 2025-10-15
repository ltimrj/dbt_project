SELECT
  src_count,
  tgt_count,
  CASE WHEN src_count = tgt_count THEN 0 ELSE 1 END AS test_result
FROM (
  SELECT
    (SELECT COUNT(*) FROM {{ ref('customer') }}) AS src_count,
    (SELECT COUNT(*) FROM {{ ref('customer_tgt') }}) AS tgt_count
