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
  taxi_trips.*
FROM
  `bigquery-public-data.chicago_taxi_trips.taxi_trips` AS taxi_trips
JOIN
  top10_taxis
USING
  (taxi_id)