-- Purpose: Initial exploration of raw COVID rate snapshot data

SELECT
  COUNT(*) AS total_rows,
  MIN(snapshot_date) AS first_snapshot,
  MAX(snapshot_date) AS last_snapshot
FROM `project2-482922.Covid_Rates.raw_covid`;

SELECT
  DISTINCT Type
FROM `project2-482922.Covid_Rates.raw_covid`
ORDER BY Type;

SELECT
  snapshot_date,
  COUNT(*) AS rows_per_snapshot
FROM `project2-482922.Covid_Rates.raw_covid`
GROUP BY snapshot_date
ORDER BY snapshot_date;
