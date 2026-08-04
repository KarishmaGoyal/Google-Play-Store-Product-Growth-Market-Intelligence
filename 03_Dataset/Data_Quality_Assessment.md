# 📋 Data Quality Assessment

## 🎯 Objective

The purpose of this assessment is to evaluate the **quality, completeness, consistency, and reliability** of the Google Play Store dataset before performing exploratory data analysis, SQL analysis, and Power BI dashboard development.

---

# 🔍 Data Quality Checks

The following quality checks were conducted to assess the suitability of the dataset for analysis:

- ✅ Missing Value Analysis
- ✅ Duplicate Record Identification
- ✅ Data Type Validation
- ✅ Inconsistent Value Detection
- ✅ Outlier Identification
- ✅ Invalid Record Detection
- ✅ Data Formatting Standardisation

---

# ⚠️ Data Quality Issues Identified

| **Quality Issue** | **Observation** | **Resolution** |
|:------------------|:----------------|:---------------|
| Missing Values | Missing values identified in selected attributes (e.g., **Rating**, **Current Version**, **Android Version**). | Retained or handled appropriately based on business relevance. |
| Duplicate Records | Duplicate application records were identified. | Removed duplicate applications using the **App** column as the unique identifier. |
| Incorrect Data Types | Numeric and date fields were stored as text. | Converted columns to the appropriate numeric and date data types. |
| Inconsistent Formatting | Currency symbols (`$`), commas, and mixed units were identified. | Standardised values to ensure consistency for analysis. |
| Outliers | Data distribution reviewed using **Power Query Column Profiling** tools. | Retained unless confirmed as invalid business records. |
| Invalid Values | One corrupted record containing shifted column values was detected. | Removed from the dataset to maintain data integrity. |

---

# 🛠️ Data Cleaning Strategy

The dataset was prepared using **Power Query** through the following ETL activities:

- Removed duplicate application records.
- Assigned appropriate data types to all columns.
- Standardised numerical and date formats.
- Cleaned text fields by removing unwanted characters.
- Converted numerical fields into analysis-ready format.
- Handled missing and invalid values where appropriate.
- Validated data quality using **Column Quality**, **Column Distribution**, and **Column Profile**.
- Removed corrupted records that could not be reliably corrected.

---

# 🚨 Data Integrity Issue

During the data quality assessment, **one corrupted record** was identified.

### Observation

- The row contained shifted column values, resulting in multiple invalid data types and missing values.

### Resolution

- The record was excluded from the dataset because it could not be reliably reconstructed without introducing bias or inaccurate information.

---

# ✅ Expected Output

After completing the ETL process, the dataset is expected to be:

- ✔ Clean and consistent
- ✔ Free from duplicate application records
- ✔ Standardised across all data types
- ✔ Suitable for SQL analysis
- ✔ Ready for Power BI dashboard development
- ✔ Reliable for business intelligence and strategic decision-making
