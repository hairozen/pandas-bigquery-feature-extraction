WITH
  top10_taxis AS (
  SELECT
    taxi_id,
    COUNT(*) AS c
  FROM
    `bigquery-public-data.chicago_taxi_trips.taxi_trips`
  GROUP BY
    1
  ORDER BY
    2 DESC
  LIMIT
    10 )
SELECT
  *
FROM
  `bigquery-public-data.chicago_taxi_trips.taxi_trips`
WHERE
  taxi_id IN (
  SELECT
    taxi_id
  FROM
    top10_taxis)