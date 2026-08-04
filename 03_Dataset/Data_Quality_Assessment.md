# Data Quality Assessment 

## Objective The purpose of this assessment is to evaluate the quality, completeness, and reliability of the Google Play Store dataset before performing exploratory data analysis, SQL analysis, and dashboard development.

---
# Data Quality Checks The following quality checks will be performed: - Missing value analysis - Duplicate record identification - Data type validation - Inconsistent value detection - Outlier identification - Invalid or incorrect records - Formatting standardisation --- # Data Quality Issues Identified This section will be updated after inspecting the dataset.

| Quality Issue | Observation | Resolution |
|---------------|-------------|------------|
| Missing Values | Missing values identified in selected attributes (e.g., Rating, Current Version, Android Version). | Retained or handled appropriately based on business relevance. |
| Duplicate Records | Duplicate application records identified. | Removed duplicate applications using the **App** column as the unique identifier. |
| Incorrect Data Types | Numeric and date fields stored as text. | Converted to appropriate numeric and date data types. |
| Inconsistent Formatting | Currency symbols, commas, and mixed units identified. | Standardised values to ensure consistency for analysis. |
| Outliers | Distribution reviewed using Power Query profiling tools. | Retained unless confirmed as invalid business records. |
| Invalid Values | One corrupted record with shifted column values detected. | Removed from the dataset due to data integrity issues. |
---

# Data Cleaning Strategy

The dataset will be prepared using Power Query and SQL through the following steps:

- Remove duplicate records.
- Handle missing values where appropriate.
- Standardise data formats.
- Convert columns to appropriate data types.
- Clean text fields by removing unwanted characters.
- Transform numerical fields for analysis.
- Validate the final dataset before loading into Power BI.

---
## Data Quality Issues

- One corrupted record identified in the dataset.
- The row contains shifted values, resulting in invalid data types and missing values across multiple columns.
- This record was excluded from further analysis because it could not be reliably reconstructed.

# Expected Output

A clean, validated, and analysis-ready dataset suitable for SQL analysis, business intelligence reporting, dashboard development, and strategic decision-making.

