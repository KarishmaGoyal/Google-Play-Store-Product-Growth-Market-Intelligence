# 📱 Google Play Store Product Growth & Market Intelligence

## 📖 Project Overview

The Google Play Store hosts millions of applications across diverse categories, making product performance analysis critical for driving user acquisition, engagement, monetisation, and long-term business growth. Product teams require reliable insights to evaluate application performance, understand customer behaviour, identify market opportunities, and optimise product strategy.

This project develops an end-to-end Product Analytics solution by integrating application metadata, ratings, reviews, installs, pricing, category, and content information. Using Power Query for ETL, SQL for business analysis, DAX for KPI calculations, and Power BI for interactive reporting, the project transforms raw data into actionable business intelligence to support strategic decision-making.

---

# 🏢 Business Problem

Google Play Store contains thousands of applications competing across multiple product categories. Understanding which factors influence application success is essential for improving product performance, increasing user adoption, enhancing customer engagement, and identifying growth opportunities.

Without structured analytics, product managers face challenges in evaluating application performance, comparing market segments, analysing pricing strategies, and prioritising future product investments.

---

# 🎯 Project Objectives

- Analyse the performance of 10,000+ Google Play Store applications.
- Evaluate customer engagement using ratings and reviews.
- Measure user adoption through application installs.
- Compare monetisation strategies of free and paid applications.
- Identify high-performing product categories.
- Analyse pricing behaviour across different application segments.
- Evaluate content ratings and Android version distribution.
- Develop an executive dashboard to support data-driven product decisions.

---

# 🛠️ Tech Stack

| Category | Technology |
|------------|-------------------------|
| Data Source | Google Play Store Dataset |
| ETL | Microsoft Excel, Power Query |
| Database | SQL |
| Data Analysis | SQL, DAX |
| Data Visualization | Microsoft Power BI |
| Version Control | Git & GitHub |
| Documentation | Markdown |

---

# 🏗️ Project Workflow

```text
Business Problem
        │
        ▼
Raw Dataset
        │
        ▼
Power Query (ETL)
        │
        ▼
SQL Business Analysis
        │
        ▼
Data Modelling & DAX
        │
        ▼
Interactive Power BI Dashboard
        │
        ▼
Business Insights
        │
        ▼
Business Recommendations
```

---

# 📂 Dataset Information

## Dataset 1

**googleplaystore.csv**

Contains application-level information including:

- Application Name
- Category
- Rating
- Reviews
- Size
- Installs
- Type
- Price
- Content Rating
- Genres
- Last Updated
- Current Version
- Android Version

## Dataset 2

**googleplaystore_user_reviews.csv**

Contains customer review information including:

- Translated Reviews
- Sentiment
- Sentiment Polarity
- Sentiment Subjectivity

---

# 🔄 ETL (Extract, Transform, Load)

Power Query was used to clean, transform, and prepare the dataset for business analysis.

### Data Cleaning Activities

- Imported raw datasets into Power BI.
- Promoted headers.
- Removed duplicate application records.
- Assigned appropriate data types.
- Cleaned pricing data by removing currency symbols.
- Converted pricing values into numeric format.
- Standardised installation counts.
- Converted review counts into numeric values.
- Converted date columns into Date format.
- Validated data quality using Column Quality, Column Distribution, and Column Profile.
- Removed invalid records and transformation errors.
- Prepared a clean analytical dataset for SQL analysis and dashboard development.

---

# 🎯 Business Questions

This project answers the following business questions:

1. Which application categories have the largest market presence?
2. Which applications have the highest number of installs?
3. Which categories receive the highest customer ratings?
4. Does pricing influence application popularity?
5. How do free and paid applications differ in performance?
6. Which categories generate the highest customer engagement?
7. What is the relationship between installs, reviews, and ratings?
8. Which Android versions support the largest number of applications?
9. Which content ratings dominate the marketplace?
10. Which product categories present the greatest growth opportunities?

---

# 📊 SQL Analysis

Advanced SQL techniques are used to perform business analysis, including:

- Common Table Expressions (CTEs)
- Window Functions
- CASE Statements
- Aggregate Functions
- Subqueries
- Ranking Functions
- Joins
- Conditional Analysis

SQL analysis supports product performance evaluation, customer behaviour analysis, pricing strategy assessment, market segmentation, and competitive benchmarking.

---

# 📈 Power BI Dashboard

The interactive Power BI dashboard enables stakeholders to monitor key business metrics and evaluate product performance.

### Dashboard Features

- Executive KPI Overview
- Category Performance Analysis
- User Adoption Analysis
- Customer Engagement Analysis
- Pricing Strategy Analysis
- Market Intelligence Dashboard
- Interactive Filters and Drill-through Analysis

---

# 📌 Key Performance Indicators (KPIs)

- Total Applications
- Total Installs
- Average Rating
- Total Reviews
- Paid vs Free Applications
- Average Price
- Category Market Share
- Customer Engagement Metrics

---

# 💡 Expected Business Insights

The analysis helps stakeholders:

- Identify high-growth product categories.
- Understand factors influencing application success.
- Evaluate monetisation strategies.
- Improve customer engagement.
- Analyse user adoption behaviour.
- Benchmark application performance.
- Support product optimisation initiatives.
- Enable evidence-based product decisions.

---

# 🚀 Business Recommendations

Potential strategic recommendations include:

- Prioritise investment in high-growth categories.
- Improve visibility of highly rated applications.
- Optimise pricing strategies based on category performance.
- Increase customer engagement through review acquisition initiatives.
- Focus development efforts on widely supported Android versions.
- Identify underperforming categories requiring product improvements.

---

# 📁 Repository Structure

```
Google-Play-Store-Product-Growth-Market-Intelligence

│── README.md

├── 01 Raw Dataset
│      ├── googleplaystore.csv
│      └── googleplaystore_user_reviews.csv

├── 02 Power Query (ETL)

├── 03 SQL Analysis

├── 04 Power BI Dashboard

├── 05 Business Insights

├── 06 Dashboard Images

└── LICENSE
```

---

# 👤 Author

**Karishma Goyal**

MBA (Marketing & HR)

Business Analyst | Data Analyst | Product Analytics

---

⭐ If you found this project valuable, consider giving it a star on GitHub.
