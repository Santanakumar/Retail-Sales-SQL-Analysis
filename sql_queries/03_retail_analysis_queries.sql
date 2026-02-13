-- 1. BUSINESS OVERVIEW KPIs

-- Total Revenue
SELECT SUM(TotalSales) AS TotalRevenue
FROM online_retail;

-- Total Orders (Invoices)
SELECT COUNT(DISTINCT InvoiceNo) AS TotalOrders
FROM online_retail;

-- Total Customers
SELECT COUNT(DISTINCT CustomerID) AS TotalCustomers
FROM online_retail
WHERE CustomerID != -1;  -- excluding the guest customers

-- Average Order Value (AOV)
SELECT SUM(TotalSales) / COUNT(DISTINCT InvoiceNo) AS AvgOrderValue
FROM online_retail;


-- 2. SALES TREND ANALYSIS (TIME BASED)

-- Monthly Revenue Trend: Helps identify seasonal growth
SELECT 
	SalesYear, 
	SalesMonth, 
	SUM(TotalSales) AS MonthlyRevenue
FROM online_retail
GROUP BY SalesYear, SalesMonth
ORDER BY SalesYear, SalesMonth;

-- Best Revenue Month: Identifies peak sales month
SELECT TOP 1 
	SalesYear, 
	SalesMonth, 
	SUM(TotalSales) AS Revenue
FROM online_retail
GROUP BY SalesYear, SalesMonth
ORDER BY Revenue DESC;


-- 3. PRODUCT PERFORMANCE ANALYSIS

-- Top 10 Best Selling Products (by Quantity): Best Products by Volume
SELECT TOP 10 
	StockCode, 
	Description, 
	SUM(Quantity) AS TotalUnitSold
FROM online_retail
GROUP BY StockCode, Description
ORDER BY TotalUnitSold DESC;

-- Top 10 Products by Revenue: High-value Products
SELECT TOP 10 
	StockCode, 
	Description, 
	SUM(TotalSales) AS ProductRevenue
FROM online_retail
GROUP BY StockCode, Description
ORDER BY ProductRevenue DESC;

-- Low Performing Products
SELECT TOP 10 
	StockCode, 
	Description, 
	SUM(TotalSales) AS Revenue
FROM online_retail
GROUP BY StockCode, Description
ORDER BY Revenue ASC;


-- 4. CUSTOMER ANALYSIS

-- Top 10 Customers by Spending: shows the VIP customers
SELECT TOP 10 
	CustomerID, 
	SUM(TotalSales) AS CustomerRevenue
FROM online_retail
WHERE CustomerID != -1
GROUP BY CustomerID
ORDER BY CustomerRevenue DESC;

-- Customer Purchase Frequency: Loyal customers
SELECT TOP 10 
	CustomerID, 
	COUNT(DISTINCT InvoiceNo) AS TotalOrders
FROM online_retail
WHERE CustomerID != -1
GROUP BY CustomerID
ORDER BY TotalOrders DESC;

-- Average Spend Per Customer: Helps understand customer value
SELECT 
	CustomerID, 
	AVG(TotalSales) AS AvgSpendPerOrder
FROM online_retail
WHERE CustomerID != -1
GROUP BY CustomerID
ORDER BY AvgSpendPerOrder DESC;


-- 5. COUNTRY / REGION INSIGHTS

-- Revenue by Country: Shows top markets
SELECT 
	Country, 
	SUM(TotalSales) AS CountryRevenue
FROM online_retail
GROUP BY Country
ORDER BY CountryRevenue DESC;

-- Top 5 Countries (Excluding UK)
SELECT TOP 5 
	Country, 
	SUM(TotalSales) AS Revenue
FROM online_retail
WHERE Country != 'United Kingdom'
GROUP BY Country
ORDER BY Revenue DESC;


-- 6. ORDER SIZE BEHAVIOR

-- Order Category Distribution: Bulk vs small buyers
SELECT 
	OrderSize, 
	COUNT(*) AS TotalOrders
FROM online_retail
GROUP BY OrderSize;

-- Revenue by Order Size
SELECT 
	OrderSize, 
	SUM(TotalSales) AS Revenue
FROM online_retail
GROUP BY OrderSize
ORDER BY Revenue DESC;


-- 7. SALES CATEGORY INSIGHTS

-- High/Medium/Low Value Sales Count
SELECT 
	SalesCategory, 
	COUNT(*) AS TotalTransactions
FROM online_retail
GROUP BY SalesCategory;

-- Revenue Contribution by Category: Shows how much revenue comes from high-value purchases
SELECT 
	SalesCategory, 
	SUM(TotalSales) AS Revenue
FROM online_retail
GROUP BY SalesCategory
ORDER BY Revenue DESC;


-- 8. RFM SEGMENTATION

-- Customer Segmentation using Revenue
SELECT 
	CustomerID, 
	COUNT(DISTINCT InvoiceNo) AS Frequency, 
	SUM(TotalSales) AS MonetaryValue
FROM online_retail
WHERE CustomerID != -1 -- avoiding guest customers
GROUP BY CustomerID
ORDER BY MonetaryValue DESC;

-- Identify High Value Loyal Customers
SELECT 
	CustomerID, 
	COUNT(DISTINCT InvoiceNo) AS Orders, 
	SUM(TotalSales) AS TotalSpent
FROM online_retail
WHERE CustomerID != -1
GROUP BY CustomerID
HAVING SUM(TotalSales) > 5000
ORDER BY TotalSpent DESC;


-- 9. FINAL SUMMARY REPORT

-- Query for Dashboard integration
SELECT
	COUNT(DISTINCT InvoiceNo) AS TotalOrders,
	COUNT(DISTINCT CustomerID) AS TotalCustomers,
	SUM(TotalSales) AS TotalRevenue,
	AVG(TotalSales) AS AvgTransactionValue
FROM online_retail;
