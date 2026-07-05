/*
===============================================================================
Dimensions Exploration
===============================================================================
Purpose:
    - To explore the structure of dimension tables.
	
SQL Functions Used:
    - DISTINCT
    - ORDER BY
===============================================================================
*/

-- Retrieve a list of unique countries from which customers originate
SELECT DISTINCT 
    country 
FROM gold.dim_customers
ORDER BY country;

-- Retrieve a list of unique categories, subcategories, and products
SELECT DISTINCT 
    category, 
    subcategory, 
    product_name 
FROM gold.dim_products
ORDER BY category, subcategory, product_name;

--Explore All countries from where customers come from.
SELECT DISTINCT country from gold.dim_customers;
--Explore All categories "All Major Division ";
SELECT DISTINCT category from gold.dim_products;
--Explore All categories with subcategories "All Major Division ";
SELECT DISTINCT category ,subcategory from gold.dim_products;
--Explore All categories with subcategories and product_name "All Major Division ";
SELECT DISTINCT category ,subcategory,product_name from gold.dim_products
ORDER BY 1,2,3;
-- Retrieve a list of unique countries from which customers originate
SELECT DISTINCT country from gold.dim_customers;
--Retrieve a list of max apearance for each country 
select distinct country as country_name, count(country) as country_count
from gold.dim_customers
group by country
order by country_count desc;
-- Retrieve a list of unique categories, subcategories, and products
SELECT DISTINCT category, subcategory , product_name  
FROM gold.dim_products 
order by 1 ,2, 3;