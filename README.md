# Retail-Sales-SQL-Analysis
End-to-end Retail Sales Analysis using SQL Server. Includes data cleaning, KPI reporting, trend analysis, and business insights from real-world retail transactions.

## EXECUTIVE SUMMARY
The project "Online Retail Sales Analysis" is a professional end-to-end data analytics portfolio project designed to demonstrate core skills such as:
- Data Cleaning using SQL
- Feature Engineering
- Business KPI Development
- Customer & Product Analytics
- Sales Trend Reporting

Using Microsoft SQL Server, the project processes a real-world retail dataset containing customer purchases, invoices, product descriptions, quantities and revenue details.

The analysis produces actionable insights such as:
- Monthly Revenue Trends
- Top Selling Products
- High-Value Customers
- Country-Wise Sales Performance
- Customer Segmentation Metrices

The project reflects real industry workflows used in e-commerce and reatil analytics.

## INTRODUCTION
### Background
Retail companies generate massive volumes of transactional data daily.
However, raw sales data often contains:
- Missing values
- Invalid transactions
- Inconsistent formatting
- No direct revenue metrices

To extract meaningful insights, analysis must first clean and structure the dataset before performing business analysis.

### Motivation
Retail businesses generate large volumes of transactional data every day. However, raw sales datasets are often incomplete, inconsistent, and not directly usable for analysis.

The motivation behind the project was to simulate a real-world data analyst workflow by cleaning retail transaction data, engineering meaningful revenue-based features, and generating business insights such as sales trends, top-performing products, and high-value customers using SQL.

## PROJECT OBJECTIVES
The main objectives of this project are:
- **Database Creation & Data Import** in SQL Server
- **Data Cleaning & Validation** of raw retail transactions
- **Feature Engineering** for business metrices
- **Exploratory Sales Analysis** using SQL queries
- **Customer & Product Performance Insights**
- Preparing outputs for visualization dashboards

## DATASET INFORMATION
- Source: Kaggle Online Retail Dataset
- Records: ~500K+ Transactions
- Domain: UK-based E-Commerce Retail
Dataset contains:
Column Name | Description
InvoiceNo | Unique invoice identifier
StockCode | Product code
Description | Product name
Quantity | Units purchased
InvoiceDate | Purchase timestamp
UnitPrice | Price per unit
CustomerID | Customer identifier
Country | Customer region

## REQUIREMENTS
To run this project, we need:
- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- Retail Dataset CSV File
- SQL Knowledge

## PROJECT WORKFLOW
The project follows a structured multi-stage pipeline similar to real analytics teams:
### Phase 1: Database & Table Setup
- Created SQL Server Database
- Imported Kaggle dataset into SQL table
- Verified schema and column consistency

- [01_create_table.sql](sql_queries/01_create_table.sql)

### Phase 2: Data Cleaning & Feature Engineering
Key cleaning steps performed:
- Handling missing product descriptions
- Replacing missing Customer IDs
- Removing invalid quantity and price records
- Trimming text formatting issues

- [02_data_cleaning_and_feature_engineering.sql](sql_queries/02_data_cleaning_and_feature_engineering.sql)

### Phase 3: Business Analysis & Insights
The final stage includes SQL queries that answer business questions like:
- How much revenue was generated?
- Which products contribute most to sales?
- Who are the top customers?
- What are the best performing countries?
- How do sales change month to month?

## BUSINESS ANALYSIS RESULTS
