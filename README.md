# Financial Sales & Loss Variance Analysis
A cross-tool financial analytics project using **Python**, **SQL**, **R**, and **Power BI** to evaluate month-over-month performance and pinpoint profitability leaks across global sales segments.

## Executive Summary
Analysis of 700 transaction records (Sept 2013 – Dec 2014) uncovered critical margin leaks masked by overall revenue growth.

* **100% of Losses in Enterprise Segment:** All 58 loss-making transactions ($777,321.25 total) occurred exclusively in the Enterprise segment.
* **Discounting Root Cause:** $622,368.75 of total losses stemmed from the High Discount tier.
* **Q4 Seasonality:** Strong October revenue surges (+107% in 2013; +93% in 2014) followed by sharp November pullbacks (-56% in 2014).
* **Top Market:** France produced the highest total profit ($3,781,020.79).

## Data Pipeline & Workflow
1. **Python (Pandas):** Cleaned raw data, stripped hidden whitespaces, and used Regex to convert accounting format `$(X,XXX.XX)` into true negative numbers (`-X,XXX.XX`). *Prevented a $777.3K reporting error.*
2. **SQL (SQLite):** Calculated MoM trends via `LAG()` window functions and localized loss clusters using multi-dimensional `GROUP BY` aggregations.
3. **Base R:** Replicated loss logic using `subset()` and `aggregate()` to verify 100% cross-tool data parity.
4. **Power BI:** Built DAX measures and an interactive dashboard featuring financial KPI cards, time-series combo charts, and discount-tier visuals.

## Tech Stack
* **Data Processing & Cleaning:** Python (`pandas`), Jupyter Notebook
* **Querying & Analytics:** SQL (`SQLite`, Window Functions)
* **Verification:** R (Base R Data Structures)
* **Data Visualization:** Power BI Desktop (DAX, Interactive Dashboards), Matplotlib
