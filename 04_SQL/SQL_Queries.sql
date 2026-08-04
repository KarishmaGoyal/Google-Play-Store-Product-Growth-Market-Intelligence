/*=========================================================
Project : Google Play Store Product Growth & Marketplace Intelligence
Author  : Karishma Goyal
Tool    : SQL
=========================================================*/


/*=========================================================
SECTION 1 : DATABASE EXPLORATION
=========================================================*/

-- Q1. Total number of applications

SELECT COUNT(*) AS Total_Applications
FROM google_play_store;


-- Q2. Total number of categories

SELECT COUNT(DISTINCT Category) AS Total_Categories
FROM google_play_store;


-- Q3. Total installs across marketplace

SELECT SUM(Installs) AS Total_Installs
FROM google_play_store;


/*=========================================================
SECTION 2 : PRODUCT PERFORMANCE
=========================================================*/

-- Q4. Top 10 applications by installs

SELECT App,
       Installs
FROM google_play_store
ORDER BY Installs DESC
LIMIT 10;


-- Q5. Top rated applications

SELECT App,
       Rating
FROM google_play_store
WHERE Rating IS NOT NULL
ORDER BY Rating DESC
LIMIT 10;


-- Q6. Categories with highest average rating

SELECT Category,
       ROUND(AVG(Rating),2) AS Average_Rating
FROM google_play_store
GROUP BY Category
ORDER BY Average_Rating DESC;


/*=========================================================
SECTION 3 : CUSTOMER ENGAGEMENT
=========================================================*/

-- Q7. Categories with highest review volume

SELECT Category,
       SUM(Reviews) AS Total_Reviews
FROM google_play_store
GROUP BY Category
ORDER BY Total_Reviews DESC;


-- Q8. Top applications by reviews

SELECT App,
       Reviews
FROM google_play_store
ORDER BY Reviews DESC
LIMIT 10;


/*=========================================================
SECTION 4 : MONETISATION
=========================================================*/

-- Q9. Free vs Paid applications

SELECT Type,
       COUNT(*) AS Total_Apps
FROM google_play_store
GROUP BY Type;


-- Q10. Average price by category

SELECT Category,
       ROUND(AVG(Price),2) AS Average_Price
FROM google_play_store
WHERE Type='Paid'
GROUP BY Category
ORDER BY Average_Price DESC;


/*=========================================================
SECTION 5 : MARKET INTELLIGENCE
=========================================================*/

-- Q11. Categories ranked by installs

SELECT Category,
       SUM(Installs) AS Total_Installs,
       RANK() OVER(ORDER BY SUM(Installs) DESC) AS Category_Rank
FROM google_play_store
GROUP BY Category;


-- Q12. Market share by category

SELECT
Category,
SUM(Installs) AS Installs,
ROUND(
SUM(Installs)*100.0/
SUM(SUM(Installs)) OVER(),2) AS Market_Share_Percentage
FROM google_play_store
GROUP BY Category
ORDER BY Market_Share_Percentage DESC;


/*=========================================================
SECTION 6 : ADVANCED SQL
=========================================================*/

-- Q13. Applications performing above category average

SELECT App,
       Category,
       Rating
FROM google_play_store g
WHERE Rating >
(
SELECT AVG(Rating)
FROM google_play_store
WHERE Category=g.Category
);


-- Q14. Top application in each category

WITH RankedApps AS
(
SELECT *,
RANK() OVER
(
PARTITION BY Category
ORDER BY Installs DESC
) AS Rank_No
FROM google_play_store
)

SELECT *
FROM RankedApps
WHERE Rank_No=1;


-- Q15. Rating Classification

SELECT App,
Rating,

CASE

WHEN Rating>=4.5 THEN 'Excellent'

WHEN Rating>=4 THEN 'Good'

WHEN Rating>=3 THEN 'Average'

ELSE 'Needs Improvement'

END AS Rating_Category

FROM google_play_store;

/*=========================================================
SECTION 7 : ADVANCED BUSINESS ANALYTICS
=========================================================*/

-- Q16. Applications with above-average installs

SELECT
    App,
    Category,
    Installs
FROM google_play_store
WHERE Installs >
(
    SELECT AVG(Installs)
    FROM google_play_store
)
ORDER BY Installs DESC;


-- Q17. Category-wise average installs and ratings

SELECT
    Category,
    COUNT(*) AS Total_Apps,
    ROUND(AVG(Rating),2) AS Avg_Rating,
    ROUND(AVG(Installs),0) AS Avg_Installs
FROM google_play_store
GROUP BY Category
ORDER BY Avg_Installs DESC;


-- Q18. Top 3 applications in each category

WITH RankedApps AS
(
SELECT
    App,
    Category,
    Rating,
    Installs,
    RANK() OVER
    (
        PARTITION BY Category
        ORDER BY Installs DESC
    ) AS Rank_No
FROM google_play_store
)

SELECT *
FROM RankedApps
WHERE Rank_No <= 3
ORDER BY Category, Rank_No;


-- Q19. Categories with highest percentage of paid applications

SELECT
    Category,
    ROUND(
    SUM(CASE WHEN Type='Paid' THEN 1 ELSE 0 END)*100.0/
    COUNT(*),2) AS Paid_Percentage
FROM google_play_store
GROUP BY Category
ORDER BY Paid_Percentage DESC;


-- Q20. Average rating by application type

SELECT
    Type,
    ROUND(AVG(Rating),2) AS Average_Rating
FROM google_play_store
GROUP BY Type;


/*=========================================================
SECTION 8 : PRODUCT INTELLIGENCE
=========================================================*/

-- Q21. Product Health Score

SELECT
    App,
    Rating,
    Reviews,
    Installs,

    ROUND(
    (Rating*20)
    +
    LOG10(Reviews+1)*10
    +
    LOG10(Installs+1)*5
    ,2) AS Product_Health_Score

FROM google_play_store
ORDER BY Product_Health_Score DESC;


-- Q22. Customer Engagement Index

SELECT
    App,
    Reviews,
    Installs,

    ROUND(
    Reviews*100.0/
    NULLIF(Installs,0),4
    ) AS Engagement_Index

FROM google_play_store
ORDER BY Engagement_Index DESC;


-- Q23. Highest rated paid applications

SELECT
    App,
    Category,
    Price,
    Rating
FROM google_play_store
WHERE Type='Paid'
ORDER BY Rating DESC, Price DESC;


-- Q24. Applications never updated recently

SELECT
    App,
    Category,
    `Last Updated`
FROM google_play_store
ORDER BY `Last Updated` ASC;


/*=========================================================
SECTION 9 : EXECUTIVE REPORTING
=========================================================*/

-- Q25. Executive KPI Summary

SELECT

COUNT(*) AS Total_Applications,

COUNT(DISTINCT Category) AS Categories,

SUM(Installs) AS Total_Installs,

ROUND(AVG(Rating),2) AS Average_Rating,

SUM(Reviews) AS Total_Reviews,

ROUND(AVG(Price),2) AS Average_Price

FROM google_play_store;


-- Q26. Top category by installs

SELECT
    Category,
    SUM(Installs) AS Total_Installs
FROM google_play_store
GROUP BY Category
ORDER BY Total_Installs DESC
LIMIT 1;


-- Q27. Most competitive categories

SELECT
    Category,
    COUNT(*) AS Total_Apps
FROM google_play_store
GROUP BY Category
ORDER BY Total_Apps DESC;


-- Q28. Category ranking by average rating

SELECT
    Category,
    ROUND(AVG(Rating),2) AS Avg_Rating,

    DENSE_RANK() OVER
    (
        ORDER BY AVG(Rating) DESC
    ) AS Category_Rank

FROM google_play_store
GROUP BY Category;


-- Q29. Premium applications priced above category average

SELECT
    App,
    Category,
    Price

FROM google_play_store g

WHERE Price >
(
SELECT AVG(Price)

FROM google_play_store

WHERE Category=g.Category
)

ORDER BY Price DESC;


-- Q30. Executive Dashboard Dataset

SELECT

Category,

COUNT(*) AS Total_Apps,

SUM(Installs) AS Total_Installs,

ROUND(AVG(Rating),2) AS Average_Rating,

SUM(Reviews) AS Total_Reviews,

ROUND(AVG(Price),2) AS Average_Price

FROM google_play_store

GROUP BY Category

ORDER BY Total_Installs DESC;
