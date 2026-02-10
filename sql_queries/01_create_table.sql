CREATE TABLE online_retail(
	InvoiceNo NVARCHAR(50),
	StockCode NVARCHAR(50),
	Description NVARCHAR(255),
	Quantity INT,
	InvoiceDate DATETIME2(7),
	UnitPrice DECIMAL(10,2),
	CustomerID FLOAT NULL,
	Country NVARCHAR(50)
);
