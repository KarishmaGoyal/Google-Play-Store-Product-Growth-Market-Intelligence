# Data Dictionary

## Dataset: googleplaystore.csv

| Column | Data Type | Description | Business Meaning |
|---------|-----------|-------------|------------------|
| App | Text | Application name | Unique product identifier |
| Category | Text | Application category | Business segment used for market analysis |
| Rating | Decimal | Average user rating (1–5) | Customer satisfaction metric |
| Reviews | Integer | Total number of user reviews | Customer engagement indicator |
| Size | Text | Application size | Product characteristic |
| Installs | Integer | Total application installs | User adoption metric |
| Type | Text | Free or Paid | Business monetisation model |
| Price | Decimal | Application price | Revenue and pricing strategy |
| Content Rating | Text | Target audience classification | Audience segmentation |
| Genres | Text | Application genre | Product classification |
| Last Updated | Date | Last application update | Product maintenance activity |
| Current Ver | Text | Current application version | Product release tracking |
| Android Ver | Text | Minimum Android version supported | Platform compatibility |

---

## Dataset: googleplaystore_user_reviews.csv

| Column | Data Type | Description | Business Meaning |
|---------|-----------|-------------|------------------|
| App | Text | Application name | Links reviews to applications |
| Translated Review | Text | User review | Customer feedback |
| Sentiment | Text | Positive, Neutral, Negative | Customer perception |
| Sentiment Polarity | Decimal | Sentiment score (-1 to 1) | Opinion intensity |
| Sentiment Subjectivity | Decimal | Subjectivity score (0 to 1) | Measures objectivity vs opinion |
