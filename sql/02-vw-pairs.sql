-- 02_vw_covid_base.sql
-- Purpose: Create cleaned base view with numeric metric values

CREATE OR REPLACE VIEW
  `project2-482922.Covid_Rates.vw_covid_base` AS
SELECT
  snapshot_date,
  State,
  AgeCategory_Legend,
  Type,
  CAST(metric_value AS FLOAT64) AS metric_value
FROM `project2-482922.Covid_Rates.raw_covid`
WHERE metric_value IS NOT NULL;
