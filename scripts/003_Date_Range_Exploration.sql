/*
===============================================================================
Date Range Exploration 
===============================================================================
Purpose:
    - To determine the temporal boundaries of key data points.
    - To understand the range of historical data.

SQL Functions Used:
    - MIN(), MAX(), DATEDIFF()
===============================================================================
*/

-- Determine the first and last order date and the total duration in months
SELECT 
    MIN(order_date) AS first_order_date,
    MAX(order_date) AS last_order_date,
    DATEDIFF(MONTH, MIN(order_date), MAX(order_date)) AS order_range_months
FROM gold.fact_sales;

-- Find the youngest and oldest customer based on birthdate
SELECT
    MIN(birthdate) AS oldest_birthdate,
    DATEDIFF(YEAR, MIN(birthdate), GETDATE()) AS oldest_age,
    MAX(birthdate) AS youngest_birthdate,
    DATEDIFF(YEAR, MAX(birthdate), GETDATE()) AS youngest_age
FROM gold.dim_customers;

--Find the date of first and last order 
Select MIN(order_date) first_order_date, MAX(order_date) last_order_date from gold.fact_sales;
--How many years of sale are available 
Select DATEDIFF(YEAR,MIN(order_date),MAX(order_date)) AS order_range_year from gold.fact_sales;
--How many months of sale are available 
Select DATEDIFF(MONTH,MIN(order_date),MAX(order_date)) AS order_range_month from gold.fact_sales;
--How many dayss of sale are available 
Select DATEDIFF(DAY,MIN(order_date),MAX(order_date)) AS order_range_day from gold.fact_sales;
--Find the youngest and oldest customers 
Select MIN(birthdate) AS youngest_customers, MAX(birthdate) AS oldest_customers from gold.dim_customers;
--Find the youngest and oldest customers age
Select DATEDIFF(YEAR,MIN(birthdate),GETDATE()) AS oldest_age ,DATEDIFF(YEAR,MAX(birthdate),GETDATE()) AS youngest_age from gold.dim_customers;
-- Determine the first and last order date and the total duration in months
select DATEDIFF(MONTH ,MIN(order_date),MAX(order_date)),
MIN(order_date) as first_order ,
MAX(order_date) as last_order 
from gold.fact_sales;
-- Find the youngest and oldest customer based on birthdate
select DATEDIFF(year, MIN(birthdate) ,GETDATE()) as oldest_age,
DATEDIFF(year, MAX(birthdate) ,GETDATE()) as youngest_age,
first_name, birthdate from gold.dim_customers
