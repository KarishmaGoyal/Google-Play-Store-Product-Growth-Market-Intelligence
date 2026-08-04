# SQL Query Documentation

## Objective

This document describes the purpose of each SQL query used throughout the project. Every query is designed to answer a specific business question and generate insights that support product strategy, customer engagement, pricing optimisation, and marketplace intelligence.

---

# Query Documentation

| Query No. | Business Objective | SQL Concepts Used | Expected Output | Business Value |
|-----------|--------------------|-------------------|-----------------|----------------|
| 01 | Count total applications | COUNT() | Total number of applications | Understand marketplace size |
| 02 | Analyse applications by category | GROUP BY | Applications per category | Identify dominant product categories |
| 03 | Find top installed applications | ORDER BY, LIMIT | Highest installed applications | Measure product popularity |
| 04 | Identify highest-rated applications | ORDER BY | Top-rated applications | Evaluate customer satisfaction |
| 05 | Calculate average rating by category | AVG(), GROUP BY | Category average ratings | Compare product quality |
| 06 | Measure customer engagement | SUM(), GROUP BY | Total reviews by category | Evaluate user engagement |
| 07 | Compare free vs paid applications | CASE, GROUP BY | Distribution of application types | Analyse monetisation models |
| 08 | Analyse average price by category | AVG() | Average pricing | Evaluate pricing strategy |
| 09 | Rank categories by installs | Window Functions | Category ranking | Identify market leaders |
| 10 | Identify top performing applications | RANK() | Ranked applications | Benchmark product performance |
| 11 | Analyse Android version support | GROUP BY | Application distribution | Platform compatibility analysis |
| 12 | Evaluate content ratings | GROUP BY | Audience segmentation | Market targeting insights |
| 13 | Identify high-growth categories | CTE | Ranked categories | Product growth opportunities |
| 14 | Compare installs with ratings | CASE | Performance comparison | Product optimisation |
| 15 | Analyse review distribution | Aggregate Functions | Customer feedback trends | Engagement analysis |
| 16 | Identify premium applications | WHERE | High-priced applications | Premium market analysis |
| 17 | Calculate marketplace KPIs | Aggregate Functions | Business KPIs | Executive reporting |
| 18 | Analyse category market share | Window Functions | Market share percentages | Competitive analysis |
| 19 | Find applications above category average | Subquery | High-performing applications | Performance benchmarking |
| 20 | Generate executive summary metrics | CTE + Aggregates | Dashboard KPIs | Executive decision support |

---

# SQL Features Demonstrated

The SQL analysis demonstrates practical application of:

- SELECT Statements
- WHERE Clause
- ORDER BY
- GROUP BY
- Aggregate Functions
- CASE Statements
- Common Table Expressions (CTEs)
- Window Functions
- Ranking Functions
- Subqueries
- Conditional Logic

---

# Business Impact

The SQL analysis transforms raw application data into meaningful business insights that support:

- Product performance evaluation
- Customer engagement analysis
- User adoption measurement
- Pricing strategy optimisation
- Marketplace intelligence
- Executive decision-making
