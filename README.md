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

[01_create_table](sql_queries/01_create_table.sql)

### Phase 2: Data Cleaning & Feature Engineering
This script includes:
- Handling missing values
- Removing invalid transactions
- Creating analytical features
  - TotalSales
  - CustomerType
  - OrderSize
  - SalesCategory

[02_data_cleaning_and_feature_engineering](sql_queries/02_data_cleaning_and_feature_engineering.sql)

### Phase 3: Business Analysis & Insights
The final stage includes SQL queries that answer business questions like:
- How much revenue was generated?
- Which products contribute most to sales?
- Who are the top customers?
- What are the best performing countries?
- How do sales change month to month?

[03_retail_analysis_queries](sql_queries/03_retail_analysis_queries.sql)

## RESULTS
To ensure transparency and portfolio credibility, key outputs from each SQL script are documented below.

### Script 01: Data Import Confirmation
The dataset was successfully imported into SQL Server as dbo.online_retail
![table_import_successfully](images/table_import_successfully.png)


### Script 02: Data Cleaning & Feature Engineering Results
This stage involved handling missing values, removing invalid transactions, and creating new analytical features.

**Missing Values Handled**


**Text Formatting Cleaned, Invalid Quantity & Price Records Removed**


**TotalSales Feature Created**


**Customer Segmentation Feature**


**Sales Category Classification**


### Script 03: Business Analysis Insights
The final script generated business KPIs and analytical insights for decision-making.

**Monthly Revenue Trend**


**Top Products by Revenue**


**Top Customers by Spending**


## KEY SKILLS DEMONSTRATED
This project showcases:
- SQL Data Cleaning
- Feature Engineering
- Business KPI Reporting
- Customer & Product Analytics
- Aggregations, Joins and Grouping
- Retail Domain Understanding
- Portfolio Documentation

## CONCLUSION
The project demonstrates a complete end-to-end SQL-based retail analytics workflow, starting from raw transaction data to meaningful business insights.

By performing data cleaning, feature engineering, and structured exploratory analysis, the dataset was transformed into an analysis-ready format suitable for reporting and decision-making.

The project highlights key analytical capabilities such as:

- Database and table design in SQL Server
- Real-world data preprocessing and quality handling
- Feature creation for revenue and customer segmentation
- Business-driven querying for sales and customer insights

Overall, this analysis provides a strong foundation for understanding retail performance patterns and supports data-driven business strategies.
