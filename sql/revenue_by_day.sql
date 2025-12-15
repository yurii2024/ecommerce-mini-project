-- Revenue by day
SELECT
  DATE(TIMESTAMP_MICROS(event_timestamp)) AS event_date,
  SUM(ecommerce.purchase_revenue) AS revenue
FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`
WHERE event_name = 'purchase'
GROUP BY event_date
ORDER BY event_date;
