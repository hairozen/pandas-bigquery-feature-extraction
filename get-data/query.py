from google.cloud import bigquery

q = """
SELECT
  *
FROM
  `chicago_taxi_trips.taxi_trips_sample`
"""

bigquery_client = bigquery.Client(project)
df = bigquery_client.query(q).result().to_dataframe()