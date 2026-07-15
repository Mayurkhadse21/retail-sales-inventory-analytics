/*
===========================================================
Retail Sales & Inventory Analytics
Module : Data Validation
===========================================================
*/

-- Total Records

SELECT COUNT(*) AS Total_Sales
FROM sales;

SELECT COUNT(*) AS Total_Products
FROM products;

SELECT COUNT(*) AS Total_Stores
FROM stores;

SELECT COUNT(*) AS Total_Inventory
FROM inventory;

------------------------------------------------------------

-- Duplicate Sales

SELECT
Sale_ID,
COUNT(*)
FROM sales
GROUP BY Sale_ID
HAVING COUNT(*) > 1;

------------------------------------------------------------

-- NULL Value Check

SELECT
SUM(Date IS NULL) AS Missing_Date,
SUM(Store_ID IS NULL) AS Missing_Store,
SUM(Product_ID IS NULL) AS Missing_Product,
SUM(Units IS NULL) AS Missing_Units
FROM sales;
