SELECT *
FROM (
  SELECT
    (SELECT COUNT(*) FROM {{ ref('customer') }}) AS src_count,
    (SELECT COUNT(*) FROM {{ ref('customer_tgt') }}) AS tgt_count
) AS counts
WHERE src_count != tgt_count