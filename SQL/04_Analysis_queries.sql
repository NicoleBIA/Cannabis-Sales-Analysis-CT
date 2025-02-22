-- 📌 Sales Analysis Queries

-- 📊 Sales Breakdown by Market Type
SELECT Market, SUM(RetailSalesAmount) AS TotalSales
FROM dbo.CannabisSales
GROUP BY Market
ORDER BY TotalSales DESC;

-- 📊 Sales Breakdown by Product Type
SELECT ProductType, SUM(RetailSalesAmount) AS TotalSales
FROM dbo.CannabisSales
GROUP BY ProductType
ORDER BY TotalSales DESC;

-- 📊 Monthly Sales Trend Analysis
SELECT MonthEnding, SUM(RetailSalesAmount) AS TotalSales
FROM dbo.CannabisSales
GROUP BY MonthEnding
ORDER BY MonthEnding ASC;

-- 📊 Top-Selling Product Type per Month
SELECT MonthEnding, ProductType, RetailSalesAmount
FROM dbo.CannabisSales c1
WHERE RetailSalesAmount = (SELECT MAX(RetailSalesAmount) FROM dbo.CannabisSales c2 WHERE c1.MonthEnding = c2.MonthEnding)
ORDER BY MonthEnding ASC;
