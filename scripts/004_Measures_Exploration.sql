/*
===============================================================================
Measures Exploration (Key Metrics)
===============================================================================
Purpose:
    - To calculate aggregated metrics (e.g., totals, averages) for quick insights.
    - To identify overall trends or spot anomalies.

SQL Functions Used:
    - COUNT(), SUM(), AVG()
===============================================================================
*/

-- Find the Total Sales
SELECT SUM(sales_amount) AS total_sales FROM gold.fact_sales

-- Find how many items are sold
SELECT SUM(quantity) AS total_quantity FROM gold.fact_sales

-- Find the average selling price
SELECT AVG(price) AS avg_price FROM gold.fact_sales

-- Find the Total number of Orders
SELECT COUNT(order_number) AS total_orders FROM gold.fact_sales
SELECT COUNT(DISTINCT order_number) AS total_orders FROM gold.fact_sales

-- Find the total number of products
SELECT COUNT(product_name) AS total_products FROM gold.dim_products

-- Find the total number of customers
SELECT COUNT(customer_key) AS total_customers FROM gold.dim_customers;

-- Find the total number of customers that has placed an order
SELECT COUNT(DISTINCT customer_key) AS total_customers FROM gold.fact_sales;

-- Generate a Report that shows all key metrics of the business
SELECT 'Total Sales' AS measure_name, SUM(sales_amount) AS measure_value FROM gold.fact_sales
UNION ALL
SELECT 'Total Quantity', SUM(quantity) FROM gold.fact_sales
UNION ALL
SELECT 'Average Price', AVG(price) FROM gold.fact_sales
UNION ALL
SELECT 'Total Orders', COUNT(DISTINCT order_number) FROM gold.fact_sales
UNION ALL
SELECT 'Total Products', COUNT(DISTINCT product_name) FROM gold.dim_products
UNION ALL
SELECT 'Total Customers', COUNT(customer_key) FROM gold.dim_customers;

--Find the totals sales 
Select SUM(sales_amount) AS total_sales from gold.fact_sales;
--How many items are sold 
Select SUM(quantity) AS total_quantity from gold.fact_sales;
--Find the average selling price
Select AVG(price) AS avg_selling_price from gold.fact_sales;
--Find the Total numbers of orders
Select COUNT(order_number) AS total_order from gold.fact_sales;
Select COUNT(DISTINCT order_number) AS total_order from gold.fact_sales;
--Find the Total number of customers 
Select COUNT(customer_key) AS total_customers from gold.dim_customers;
--Find the Total number of products
Select COUNT(product_key) As total_products from gold.dim_products;
Select COUNT(DISTINCT product_key) As total_product from gold.dim_products;
--Find the total number of customers that has placed orders
Select COUNT(DISTINCT customer_key) AS total_customer from gold.fact_sales;
--Genrate a report that show all key metric of the buisness 
Select 'Total Sales' AS measure_name, SUM(sales_amount) AS measure_value from gold.fact_sales
UNION ALL
Select 'Total Quantity' AS measure_name, SUM(quantity) AS measure_value from gold.fact_sales
UNION All 
Select 'Average Price' AS measure_name ,AVG(price) AS measure_value from gold.fact_sales
UNION ALL 
Select 'Total Nr. Order' AS measure_name , COUNT(DISTINCT order_number) AS 'measure_value' from gold.fact_sales
UNION ALL 
Select 'Total Nr. Customer' As measure_name , COUNT(DISTINCT customer_key) AS 'measure_value' from gold.dim_customers
UNION All 
Select 'Total Nr. Product 'AS measure_name ,COUNT(DISTINCT product_key) AS 'measure_value' from gold.dim_products;

