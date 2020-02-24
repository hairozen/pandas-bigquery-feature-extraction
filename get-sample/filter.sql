WITH
  top_taxis AS (
  SELECT
    taxi_id
  FROM
    `bigquery-public-data.chicago_taxi_trips.taxi_trips`
  GROUP BY
    1
  having count(*) > 50000
)
SELECT
  taxi_trips.*
FROM
  `bigquery-public-data.chicago_taxi_trips.taxi_trips` AS taxi_trips
JOIN
  top_taxis
USING
  (taxi_id)