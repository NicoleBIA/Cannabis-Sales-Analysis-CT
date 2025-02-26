# 📊 Cannabis Sales Analysis (2024) 

---
## 🚨 Project Status: On Hold 🚨
This project has been **paused** due to challenges in data structure and reporting clarity. While initial data exploration, SQL queries, and visualization planning were completed, the dataset’s structure prevented reliable month-over-month analysis. Future iterations may revisit this dataset with refined data validation techniques.

📌 **For a deeper reflection on this project and the decision to pivot, read my detailed entry in**  

➡️ [Diary of an Emerging Analyst: The Reality of Data Quality Issues](https://github.com/NicoleBIA/NicoleBIA.github.io/blob/main/blog/diary/diary-entry-2024-02-22.md)
---

## 📊 Lessons Learned from the Cannabis Sales Analysis Project

Although this project is currently on hold, I gained several insights into data structuring, reporting, and integrity:

- **🛠️ The Importance of Data Validation**: Understanding how raw datasets are structured is critical before deep analysis.
- **📅 Challenges with Time-Series Data**: The dataset used a rolling 12-month cumulative reporting style, making it difficult to isolate individual months.
- **🧹 Data Normalization Considerations**: Attempts to restructure the dataset for clear monthly analysis highlighted limitations in the original data collection.
- **📉 Visualization as a Quality Check**: Some data inconsistencies only surfaced when creating visualizations, reinforcing the need for exploratory analysis before drawing conclusions.

## ❌ Future Development (On Hold)
At this time, further development of this project is paused. If revisited, future improvements may include:
- Accessing a **cleaner dataset** with transparent aggregation rules.
- Implementing **data normalization techniques** for clearer time-based analysis.
- Exploring **alternative business insights** that can be drawn from the available data.

---

📂 **Related Links**

🔹 [📖 Diary Entry on Project Pivot: Reflections on the Cannabis Sales Analysis Project](https://github.com/NicoleBIA/NicoleBIA.github.io/blob/main/blog/diary/diary-entry-2024-02-22.md)

🔹 [🌐 My GitHub Portfolio: NicoleBIA.github.io](https://nicolebia.github.io/)

---

> **Final Thought:** This project highlights the importance of **data integrity, validation, and structured reporting logic** before analysis. While this dataset presented challenges, the lessons learned strengthen my ability to evaluate and work with real-world data.

📌 Cannabis Sales Analysis - Tableau & SQL

**Project Type:** Business Intelligence & Data Analysis  
**Tools Used:** SQL Server, Excel, Tableau Public  
**Key Focus Areas:**  
✅ **Data Transformation** (Cleaning, structuring, and refining datasets for analysis)  
✅ **Multi-Year Sales Trends** (Rolling cumulative sales analysis across multiple years)  
✅ **Market Segmentation** (Comparing Adult Use vs. Medical Market trends)  
✅ **Product Analysis** (Evaluating product category performance and revenue impact)  

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

#  Data Preparation & Insertion  

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
