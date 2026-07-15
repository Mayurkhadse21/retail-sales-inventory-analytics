/*
===========================================================
Views
===========================================================
*/

CREATE VIEW vw_store_performance AS

SELECT

st.Store_Name,

SUM(s.Units * p.Product_Price) AS Revenue,

SUM(
s.Units *
(p.Product_Price-p.Product_Cost)
) AS Profit,

SUM(s.Units) AS Units_Sold

FROM sales s

JOIN stores st
ON s.Store_ID=st.Store_ID

JOIN products p
ON s.Product_ID=p.Product_ID

GROUP BY st.Store_Name;
