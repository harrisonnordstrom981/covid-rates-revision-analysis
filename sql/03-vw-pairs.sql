-- 03_vw_covid_pairs.sql
-- Purpose: Pair each record with its prior snapshot value

CREATE OR REPLACE VIEW
  `project2-482922.Covid_Rates.vw_covid_pairs` AS
WITH ordered AS (
  SELECT
    snapshot_date,
    State,
    AgeCategory_Legend,
    Type,
    metric_value AS cur_val,
    LAG(metric_value) OVER (
      PARTITION BY State, AgeCategory_Legend, Type
      ORDER BY snapshot_date
    ) AS prev_val,
    LAG(snapshot_date) OVER (
      PARTITION BY State, AgeCategory_Legend, Type
      ORDER BY snapshot_date
    ) AS prev_snapshot_date
  FROM `project2-482922.Covid_Rates.vw_covid_base`
)
SELECT *
FROM ordered
WHERE prev_val IS NOT NULL;
