# 📊 Cannabis Sales Analysis (2024) 

## 📌 Cannabis Sales Analysis - Tableau & SQL
Project Type: Business Intelligence & Data Analysis
Tools Used: SQL Server, Excel, Tableau Public
Key Focus Areas:
✔ Data Transformation (Cleaning, structuring, and refining datasets for analysis)
✔ Multi-Year Sales Trends (Rolling cumulative sales analysis across multiple years)
✔ Market Segmentation (Comparing Adult Use vs. Medical Market trends)
✔ Product Analysis (Evaluating product category performance and revenue impact)

## 📌 Project Overview
This project analyzes **retail cannabis sales trends**, comparing **Adult Use vs. Medical markets**, and identifying **top-performing product categories** using SQL.

## 📌 Dataset Information
- **Source:** Connecticut Open Data Portal
- **Time Period:** January – December 2024 (Reported in 2025)
- **Key Fields:** `MonthEnding`, `ProductType`, `RetailSalesAmount`, `Market`

## 📌 Key Questions Explored
🔹 **What are the monthly sales trends?**  
🔹 **Which product categories drive the most revenue?**  
🔹 **How do Medical vs. Adult Use markets compare?**  
🔹 **Are there seasonal patterns in cannabis sales?**  

# 📂 Data Preparation & Insertion  

### ✅ Data Insertion Overview
- The dataset was cleaned and inserted into **`dbo.CannabisSales`** using SQL.
- **Fixes Implemented:**
  - 🛠 Reformatted `MonthEnding` to **YYYY-MM-DD**.
  - 🛠 Standardized long `ProductType` names (e.g., **"Other Non-Smokeable"**).
    
 **Validation Queries Executed:**
  -  **Total Sales Check** ✅
  -  **Product Type Validation** ✅
  -  **Row Count Confirmation** ✅

**Full SQL scripts are stored in the `/SQL/` folder.**

## 📊 Data Analysis & Insights
(Analysis queries, dashboards, findings, etc.)

## 📌 Next Steps
(What future improvements or expansions are planned?)

## 📌 Tools & Technologies
- **SQL (Microsoft SQL Server)**
- **Power BI / Tableau**
- **Excel (Data Cleaning & Pivot Tables)**
- **AI-Assisted Python Scripts (used for transforming & preparing a large dataset, not manually written) **  

## 📌 SQL Queries & Analysis
📂 [View SQL Queries](SQL_Queries.md) – Contains detailed queries for:

✅ **Exploratory Data Analysis (EDA)**  
✅ **Schema & Table Structure Checks**  
✅ **Data Modifications & Updates**  

## 📌 Data Source & Citation
This dataset was sourced from the **Connecticut Open Data Portal (data.ct.gov)**.

- **Dataset Name:** Cannabis Retail Products Sold by Product Type  
- **Publisher:** [data.ct.gov](https://data.ct.gov/)  
- **Metadata Updated:** February 12, 2025  
- **Access & Use:** Publicly available for analysis under non-federal terms of use.  

📌 **Source Link:** [Connecticut Cannabis Sales Data](https://data.ct.gov/api/views/jyg4-yu7v)

## 📌 Visualizations & Insights
Coming soon!   

---
