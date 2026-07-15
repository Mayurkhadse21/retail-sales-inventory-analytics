/*
===========================================================
Retail Sales & Inventory Analytics
Module : Data Cleaning
===========================================================
*/

-- Remove Currency Symbol

UPDATE products
SET Product_Cost =
REPLACE(Product_Cost,'$','');

UPDATE products
SET Product_Price =
REPLACE(Product_Price,'$','');

------------------------------------------------------------

-- Convert Data Types

ALTER TABLE products
MODIFY Product_Cost DECIMAL(10,2);

ALTER TABLE products
MODIFY Product_Price DECIMAL(10,2);

ALTER TABLE stores
MODIFY Store_Open_Date DATE;
