| Quality Issue | Observation | Resolution |
|---------------|-------------|------------|
| Missing Values | Missing values identified in selected attributes (e.g., Rating, Current Version, Android Version). | Retained or handled appropriately based on business relevance. |
| Duplicate Records | Duplicate application records identified. | Removed duplicate applications using the **App** column as the unique identifier. |
| Incorrect Data Types | Numeric and date fields stored as text. | Converted to appropriate numeric and date data types. |
| Inconsistent Formatting | Currency symbols, commas, and mixed units identified. | Standardised values to ensure consistency for analysis. |
| Outliers | Distribution reviewed using Power Query profiling tools. | Retained unless confirmed as invalid business records. |
| Invalid Values | One corrupted record with shifted column values detected. | Removed from the dataset due to data integrity issues. |
