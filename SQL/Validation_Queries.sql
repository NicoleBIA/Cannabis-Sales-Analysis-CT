--  Validation Queries for Data Integrity

-- ✅ Check total sales amount
SELECT SUM(RetailSalesAmount) AS TotalSales FROM dbo.CannabisSales;

-- ✅ Ensure all distinct product types were inserted correctly
SELECT DISTINCT ProductType FROM dbo.CannabisSales;

-- ✅ Check total row count after insertion
SELECT COUNT(*) AS TotalRows FROM dbo.CannabisSales;

--  data_validation_queries.sql --

-- ✅ Purpose: Validates data accuracy and integrity in the CannabisSales table.
-- ✅ Why It Matters: Ensures all inserted and updated data aligns with expectations.

-- Check total sales
SELECT SUM(RetailSalesAmount) AS TotalSales FROM dbo.CannabisSales;

-- Ensure all distinct product types were inserted correctly
SELECT DISTINCT ProductType FROM dbo.CannabisSales;

-- Check row count after insertion
SELECT COUNT(*) AS TotalRows FROM dbo.CannabisSales;

-- Validate that all products have been assigned a CategoryID
SELECT * FROM dbo.CannabisSales WHERE CategoryID IS NULL;
