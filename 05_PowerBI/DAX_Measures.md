# 📐 DAX Measures

## Objective

Data Analysis Expressions (DAX) are used to create business measures that transform raw application data into meaningful Key Performance Indicators (KPIs). These measures support interactive reporting, executive dashboards, and business decision-making.

---

# Executive KPIs

| Measure | DAX Formula | Business Purpose |
|----------|-------------|------------------|
| Total Applications | `Total Applications = COUNTROWS('google_play_store')` | Measures the total number of applications available in the marketplace. |
| Total Categories | `Total Categories = DISTINCTCOUNT('google_play_store'[Category])` | Measures the number of unique application categories. |
| Total Installs | `Total Installs = SUM('google_play_store'[Installs])` | Measures total marketplace adoption. |
| Total Reviews | `Total Reviews = SUM('google_play_store'[Reviews])` | Measures overall customer engagement. |
| Average Rating | `Average Rating = AVERAGE('google_play_store'[Rating])` | Measures overall customer satisfaction. |
| Average Price | `Average Price = AVERAGE('google_play_store'[Price])` | Measures the average price of paid applications. |

---

# Product Performance Measures

| Measure | DAX Formula | Business Purpose |
|----------|-------------|------------------|
| Free Apps | `Free Apps = CALCULATE(COUNTROWS('google_play_store'), 'google_play_store'[Type] = "Free")` | Counts free applications. |
| Paid Apps | `Paid Apps = CALCULATE(COUNTROWS('google_play_store'), 'google_play_store'[Type] = "Paid")` | Counts paid applications. |
| Highest Rating | `Highest Rating = MAX('google_play_store'[Rating])` | Identifies the highest application rating. |
| Highest Installs | `Highest Installs = MAX('google_play_store'[Installs])` | Identifies the highest install count. |

---

# Analytical Value

These DAX measures enable stakeholders to:

- Monitor marketplace performance.
- Measure customer engagement.
- Evaluate product performance.
- Compare monetisation strategies.
- Track executive KPIs.
- Support evidence-based decision-making.

---

# Outcome

The DAX measures provide a reliable analytical layer that powers KPI cards, charts, filters, and interactive dashboard components within Power BI.
