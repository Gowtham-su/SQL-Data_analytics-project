

-- Explore all objects in the database
SELECT * FROM INFORMATION_SCHEMA.TABLES

-- Explore Columns in the database
SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'dim_customers'


-- Dimension Exploration

-- Explore All Countries our Customers Come from.

SELECT DISTINCT
country
FROM gold.dim_customers;


-- Dimension Exploration
-- Explore All The Categories "The Major Divisions"
SELECT DISTINCT category, subcategory, product_name FROM gold.dim_products
ORDER BY 1,2,3;


-- Date Exploration
SELECT 
MIN(order_date) AS first_order_date,
MAX(order_date) AS last_order_date,
DATEDIFF(MONTH, MIN(order_date), MAX(order_date)) AS range_months
FROM gold.fact_sales;

-- Find the Youngest and Oldest Customer
SELECT
MIN(birthdate) AS oldest_birthdate,
MAX(birthdate) AS youngest_birthdate
FROM gold.dim_customers



-- Find The Youngest and oldest customer AGE
SELECT
MIN(birthdate) AS oldest_birthdate,
MAX(birthdate) AS youngest_birthdate,
DATEDIFF(YEAR,MIN(birthdate),GETDATE()) AS oldest_age,
DATEDIFF(YEAR,MAX(birthdate),GETDATE()) AS youngest_age
FROM gold.dim_customers


-- Measures Exploration
/*
Questions to explore measures
-- Find the Total Sales
-- Find how many items are sold
-- Find the average selling price
-- Find the total number of Orders
-- Find the total number of products
-- Find the total number of customers
-- Find the total number of customers that has placed order
*/


-- Measures Exploration -- 

-- Find the Total Sales

SELECT 
SUM(sales_amount) AS total_sales
FROM gold.fact_sales;

-- Find how many items are sold
SELECT
SUM(quantity) AS total_quantity
FROM gold.fact_sales;


-- Find the average selling price
SELECT
AVG(price) AS Avg_Selling_price
FROM gold.fact_sales;

-- Find the total number of Orders
SELECT
COUNT(order_number) AS total_orders
FROM gold.fact_sales;

-- Find the total number of Products

SELECT
COUNT(DISTINCT product_key) AS total_products
FROM gold.fact_sales;

-- Find the total number of Customers

SELECT
COUNT(customer_key) AS total_products
FROM gold.dim_customers;

-- Find the total number of Customers that has placed order
SELECT
COUNT(DISTINCT customer_key) AS total_products
FROM gold.fact_sales;


-- Measures Exploration -- 

SELECT 'Total Sales' AS measure_name, SUM(sales_amount) AS measure_value FROM gold.fact_sales
UNION ALL
SELECT 'Total Quantity' AS measure_name,SUM(quantity) AS measure_value FROM gold.fact_sales
UNION ALL
SELECT 'Average Price' AS measure_name ,AVG(price) AS measure_value FROM gold.fact_sales
UNION ALL
SELECT 'Total Orders' AS measure_name ,COUNT(order_number) AS measure_value FROM gold.fact_sales
UNION ALL
SELECT 'Total Products' AS measure_name, COUNT(DISTINCT product_key) AS measure_value FROM gold.fact_sales
UNION ALL
SELECT 'Total Customers' AS measure_name, COUNT(customer_key) AS measure_value FROM gold.dim_customers
UNION ALL
SELECT 'Total Customers' AS measure_name, COUNT(DISTINCT customer_key) AS measure_value FROM gold.fact_sales;


-- Magnitude Exploration


-- Find Total customers by countries
SELECT
country, COUNT(customer_key) AS total_customers
FROM gold.dim_customers
GROUP BY country
ORDER BY total_customers DESC;


-- Find total customers by gender
SELECT
gender, COUNT(customer_key) AS total_customers
FROM gold.dim_customers
GROUP BY gender
ORDER BY total_customers DESC;


-- Find total products by category
SELECT
category, COUNT(product_key) AS total_products
FROM gold.dim_products
GROUP BY category
ORDER BY total_products DESC;

-- What is the average cost in each category ?
SELECT
category, AVG(product_cost) AS Avg_cost
FROM gold.dim_products
GROUP BY category
ORDER BY Avg_cost DESC;


-- what is the total revenue generated for each category ?
SELECT
p.category,
SUM(f.sales_amount) AS Total_Revenue
FROM gold.fact_sales AS f
LEFT JOIN gold.dim_products AS p
ON F.product_key = p.product_key
GROUP BY p.category
ORDER BY Total_Revenue DESC;

-- Find total revenue generated by each customer
SELECT
c.customer_key,
c.first_name,
c.last_name,
SUM(f.sales_amount) AS Total_Revenue
FROM gold.fact_sales AS f
LEFT JOIN gold.dim_customers AS c
ON f.customer_key = c.customer_key
GROUP BY c.customer_key, c.first_name, c.last_name
ORDER BY Total_Revenue DESC;


-- What is the distribution of sold items accross countries ?

SELECT
c.country,
SUM(f.quantity) AS Total_Items_Sold
FROM gold.fact_sales AS f
LEFT JOIN gold.dim_customers AS c
ON f.customer_key = c.customer_key
GROUP BY c.country
ORDER BY Total_Items_Sold DESC;


-- Rank Analysis

-- Which 5 Products Generates the high revenue?
SELECT TOP 5
p.product_name,
SUM(f.sales_amount) AS Total_Revenue
FROM gold.fact_sales AS f
LEFT JOIN gold.dim_products AS p
ON F.product_key = p.product_key
GROUP BY p.product_name
ORDER BY Total_Revenue DESC;

-- What are the worst performing products in terms of sales?

SELECT TOP 5
p.product_name,
SUM(f.sales_amount) AS Total_Revenue
FROM gold.fact_sales AS f
LEFT JOIN gold.dim_products AS p
ON F.product_key = p.product_key
GROUP BY p.product_name
ORDER BY Total_Revenue ;
