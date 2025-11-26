-- Total Sales Amount
SELECT SUM(quantity * price) AS total_sales
FROM sales;

-- Sales by Category
SELECT category, SUM(quantity * price) AS category_sales
FROM sales
GROUP BY category;

-- Monthly Trend
SELECT strftime('%Y-%m', date) AS month, SUM(quantity * price) AS monthly_sales
FROM sales
GROUP BY month;

-- Top Selling Products
SELECT product, SUM(quantity) AS qty_sold
FROM sales
GROUP BY product
ORDER BY qty_sold DESC
LIMIT 5;
