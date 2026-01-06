# COVID Rates Revision Analysis

## Overview
This project analyzes how frequently and how substantially reported COVID rates were revised between successive data snapshots. Using SQL-based transformations in Google BigQuery and KPI-driven Tableau visualizations, the analysis highlights the evolving nature of reported public health data and the importance of monitoring revisions over time.

The goal of this project is to demonstrate an end-to-end analytics workflow: data exploration, transformation, aggregation, and visualization.

---

## Data & Tools
- **Data Source:** COVID rates snapshot data
- **SQL Engine:** Google BigQuery
- **Visualization Tool:** Tableau Public

---

## Methodology
The analysis follows a structured SQL pipeline:

1. **Raw Exploration**  
   Explored snapshot coverage, reporting cadence, and data structure.

2. **Base View Construction**  
   Cleaned and standardized numeric rate values and retained key dimensions.

3. **Snapshot Pairing**  
   Paired each record with its immediately preceding snapshot using window functions.

4. **Revision Calculation**  
   Computed absolute and percent revisions and flagged whether records changed.

5. **Aggregation & KPIs**  
   Aggregated record-level comparisons into KPI-ready summary metrics for visualization.

All transformations were performed in SQL prior to visualization to ensure transparency and reproducibility.

---

## Key Metrics
The dashboard focuses on three primary indicators:
- **% Records Revised:** Share of records that changed between snapshots
- **Average Revision Size:** Mean percent change among revised records
- **Records Compared:** Total number of snapshot-to-snapshot comparisons

A time-series visualization shows how revision behavior evolved over time.

---

## Dashboard Overview
![Dashboard Overview](visuals/dashboard_overview.png)

---

## Key Findings
- Across most reporting periods, **over 95% of records were revised** between successive snapshots.
- Revision magnitudes varied over time, indicating non-uniform reporting adjustments.
- Persistent revisions across multiple years highlight the dynamic nature of reported public health data.


## Tableau Public Account
- https://public.tableau.com/app/profile/harrison.nordstrom
