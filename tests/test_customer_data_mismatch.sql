
SELECT * FROM (
  SELECT * FROM {{ ref('customer') }}
  EXCEPT
  SELECT * FROM {{ ref('customer_tgt') }}
