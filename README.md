# system_ops_labs
A repository for SQL-based diagnostics and application support utilities.

### 🎯 Purpose
This lab contains the MySQL queries I use to investigate production failures and transaction-level errors. Coming from an Electrical Engineering background, I use these scripts as a "digital probe" to identify system bottlenecks and data inconsistencies.ture.

### 🔍 SQL Toolkit (`/sql`)
*   **`transaction_investigation.sql`**: Queries to filter failed payments by error code and timestamp.
*   **`root_cause_analysis.sql`**: Aggregation scripts to find the most frequent system blocks.
*   **`integrity_checks.sql`**: Scripts to verify account balances and status flags.

### 🛠 Technical Focus
*   **Database:** MySQL
*   **Domain:** Tier 2 Application Support & Site Reliability.
*   **Core Skills:** Data filtering, Aggregations (`GROUP BY`), and Root Cause Analysis (RCA) for incident reporting.

## 🎯 Reliability Goal
To leverage SQL as a diagnostic probe, ensuring rapid resolution of customer-reported issues and maintaining high system integrity.
