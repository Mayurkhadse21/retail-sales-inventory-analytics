/*
===========================================================
Business Analysis
===========================================================
*/

-- Revenue by Store

SELECT
st.Store_Name,
SUM(s.Units * p.Product_Price) AS Revenue
FROM sales s
JOIN products p
ON s.Product_ID = p.Product_ID
JOIN stores st
ON s.Store_ID = st.Store_ID
GROUP BY st.Store_Name
ORDER BY Revenue DESC;

------------------------------------------------------------

-- Profit by Category

SELECT
p.Product_Category,
SUM(
s.Units *
(p.Product_Price - p.Product_Cost)
) AS Profit
FROM sales s
JOIN products p
ON s.Product_ID = p.Product_ID
GROUP BY p.Product_Category
ORDER BY Profit DESC;

------------------------------------------------------------

-- Inventory Value

SELECT
SUM(
i.Stock_On_Hand *
p.Product_Cost
) AS Inventory_Value
FROM inventory i
JOIN products p
ON i.Product_ID = p.Product_ID;
