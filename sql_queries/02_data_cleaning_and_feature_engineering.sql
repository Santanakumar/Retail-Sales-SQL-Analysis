-- 1. HANDLING MISSING VALUES

-- Check for Null Values in Important Columns
SELECT 
	SUM(CASE WHEN InvoiceNo IS NULL THEN 1 ELSE 0 END) AS Null_InvoiceNo,
	SUM(CASE WHEN StockCode IS NULL THEN 1 ELSE 0 END) AS Null_StockCode,
	SUM(CASE WHEN Description IS NULL THEN 1 ELSE 0 END) AS Null_Description,
	SUM(CASE WHEN Quantity IS NULL THEN 1 ELSE 0 END) AS Null_Quantity,
	SUM(CASE WHEN InvoiceDate IS NULL THEN 1 ELSE 0 END) AS Null_InvoiceDate,
	SUM(CASE WHEN UnitPrice IS NULL THEN 1 ELSE 0 END) AS Null_UnitPrice,
	SUM(CASE WHEN CustomerID IS NULL THEN 1 ELSE 0 END) AS Null_CustomerID,
	SUM(CASE WHEN Country IS NULL THEN 1 ELSE 0 END) AS Null_Country
FROM online_retail;

-- Replace missing descriptions with placeholder
UPDATE online_retail
SET Description = 'Unknown Product'
WHERE Description IS NULL;

-- Handle Missing Customer IDs
UPDATE online_retail
SET CustomerID = -1
WHERE CustomerID IS NULL;


-- 2. CLEAN TEXT DATA AND REMOVE INVALID RECORDS

-- Remove extra spaces in product descriptions
UPDATE online_retail
SET Description = LTRIM(RTRIM(Description))
WHERE Description IS NOT NULL;

-- Remove Invalid Quantity Records
DELETE FROM online_retail
WHERE Quantity <= 0;

-- Remove Invalid Unit Price Records
DELETE FROM online_retail
WHERE UnitPrice <= 0;


-- 3. FIX DATA TYPES

-- Convert UnitPrice to DECIMAL for accurate money calculations
ALTER TABLE online_retail
ALTER COLUMN UnitPrice DECIMAL(10,2);


-- 4. FEATURE ENGINEERING

-- Add Revenue column (Quantity * UnitPrice)
ALTER TABLE online_retail
ADD TotalSales DECIMAL(12,2);

UPDATE online_retail
SET TotalSales= Quantity * UnitPrice;

-- Add Sales Year and Month for trend analysis 
ALTER TABLE online_retail
ADD SalesYear INT, 
	SalesMonth INT;

UPDATE online_retail
SET SalesYear = YEAR(InvoiceDate),
	SalesMonth = MONTH(InvoiceDate);

-- Add Return Flag
ALTER TABLE online_retail
ADD IsReturn BIT;

UPDATE online_retail
SET IsReturn = 
	CASE 
		WHEN Quantity < 0 THEN 1
		ELSE 0
	END;

-- Customer Type Feature
ALTER TABLE online_retail
ADD CustomerType NVARCHAR(20);

UPDATE online_retail
SET CustomerType = 
	CASE
		WHEN CustomerID IS NULL THEN 'Guest'
		ELSE 'Registered'
	END;

-- Order Size Category
ALTER TABLE online_retail
ADD OrderSize NVARCHAR(20);

UPDATE online_retail
SET OrderSize = 
	CASE
		WHEN Quantity >= 50 THEN 'Bulk Order'
		WHEN Quantity BETWEEN 10 AND 49 THEN 'Medium Order'
		ELSE 'Small Order'
	END;

-- Create Sales Category Feature
ALTER TABLE online_retail
ADD SalesCategory NVARCHAR(50);

UPDATE online_retail
SET SalesCategory=
	CASE
		WHEN TotalSales >= 500 THEN 'High Value'
		WHEN TotalSales BETWEEN 100 AND 499 THEN 'Medium Value'
		ELSE 'Low Value'
	END;
