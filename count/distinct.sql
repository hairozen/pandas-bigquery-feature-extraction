SELECT
  COUNT(DISTINCT taxi_id) AS taxi_id_count,
  COUNT(DISTINCT TO_HEX(SHA1(taxi_id))) AS new_taxi_id_count
FROM
  `bigquery-public-data.chicago_taxi_trips.taxi_trips`