/*
===========================================================
Advanced SQL
===========================================================
*/

-- ROW_NUMBER

SELECT
Product_Name,
Product_Category,
Product_Price,
ROW_NUMBER() OVER(
PARTITION BY Product_Category
ORDER BY Product_Price DESC
) AS Row_Num
FROM products;

------------------------------------------------------------

-- RANK

SELECT
Product_Name,
Product_Category,
Product_Price,
RANK() OVER(
PARTITION BY Product_Category
ORDER BY Product_Price DESC
) AS Price_Rank
FROM products;

------------------------------------------------------------

-- DENSE_RANK

SELECT
Product_Name,
Product_Category,
Product_Price,
DENSE_RANK() OVER(
PARTITION BY Product_Category
ORDER BY Product_Price DESC
) AS Dense_Rank
FROM products;

------------------------------------------------------------

-- CTE Example

WITH StoreRevenue AS
(
SELECT
Store_ID,
SUM(Units) AS Units
FROM sales
GROUP BY Store_ID
)

SELECT *
FROM StoreRevenue;
