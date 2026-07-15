/*
===========================================================
Exploratory Data Analysis
===========================================================
*/

-- Total Units Sold by Product

SELECT
p.Product_Name,
SUM(s.Units) AS Units_Sold
FROM sales s
JOIN products p
ON s.Product_ID = p.Product_ID
GROUP BY p.Product_Name
ORDER BY Units_Sold DESC;

------------------------------------------------------------

-- Store Performance

SELECT
st.Store_Name,
SUM(s.Units) AS Units_Sold
FROM sales s
JOIN stores st
ON s.Store_ID = st.Store_ID
GROUP BY st.Store_Name
ORDER BY Units_Sold DESC;

------------------------------------------------------------

-- Products per Category

SELECT
Product_Category,
COUNT(*) AS Products
FROM products
GROUP BY Product_Category;
