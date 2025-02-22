Data Insertion & Validation Queries

Data Insertion: Cannabis Sales Table
-- Cleaned and formatted data insert script
INSERT INTO dbo.CannabisSales (MonthEnding, ProductType, RetailSalesAmount, Market)
VALUES 
('2025-01-25', 'Usable Cannabis (Flower)', 2819150.84, 'Adult Use'),
('2025-01-25', 'Vape Cartridge', 721223.06, 'Adult Use'),
('2025-01-25', 'Infused Edible', 688928.99, 'Adult Use'),
('2025-01-25', 'Extract for Inhalation', 868829.67, 'Adult Use'),
('2025-01-25', 'Other Non-Smokeable', 4343508.44, 'Medical');

-- 📌 Validation Query: Check total sales
SELECT SUM(RetailSalesAmount) AS TotalSales FROM dbo.CannabisSales;

-- 📌 Validation Query: Ensure all distinct product types were inserted correctly
SELECT DISTINCT ProductType FROM dbo.CannabisSales;

-- 📌 Validation Query: Check row count after insertion
SELECT COUNT(*) AS TotalRows FROM dbo.CannabisSales;

-- 📌 Debugging Notes:
-- 1. The MonthEnding column was formatted from "25-Jan" to "YYYY-MM-DD".
-- 2. ProductType string truncation errors were resolved by renaming long values to "Other Non-Smokeable".
-- 3. Insert script was re-run successfully after cleaning.

--📌 Next Steps:

Perform deeper sales analysis by Market Type (Adult Use vs. Medical).
Break down sales trends over time.
Store additional analysis queries in analysis_queries.sql inside /SQL/ folder.

📌 For full documentation of SQL scripts, see the /SQL/ folder in the repository
