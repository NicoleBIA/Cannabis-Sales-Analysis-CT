-- 📌 Insert Initial January 2024 Sales Data into dbo.CannabisSales

INSERT INTO dbo.CannabisSales (MonthEnding, ProductType, RetailSalesAmount, Market)
VALUES
('2024-01-25', 'Extract for Inhalation', 4036770.97, 'Adult Use'),
('2024-01-25', 'Infused Edible', 7894494.55, 'Adult Use'),
('2024-01-25', 'Other (Non-Smokable Infused)', 1757231.66, 'Adult Use'),
('2024-01-25', 'Usable Cannabis (Flower)', 29227477.96, 'Adult Use'),
('2024-01-25', 'Vape Cartridge', 18784258.33, 'Adult Use');

-- ✅ Purpose: This query inserts the first batch of sales data for analysis.
-- ✅ Why It Matters: Ensures the dataset is properly populated before analysis begins.
-- Insert Standardized Categories
INSERT INTO dbo.ProductCategory (ProductCategory)
VALUES 
('Flower'),
('Edibles'),
('Vape'),
('Extracts'),
('Other Non-Smokeable');

-- 📌 update_category_ids.sql --

-- ✅ Purpose: Assigns a CategoryID to each product type in CannabisSales.
-- ✅ Why It Matters: Enables category-based filtering and analysis.

-- Assign 'Flower' Category
UPDATE dbo.CannabisSales
SET CategoryID = (SELECT CategoryID FROM dbo.ProductCategory WHERE ProductCategory = 'Flower')
WHERE ProductType = 'Usable Cannabis (Flower)';

-- Assign 'Edibles' Category
UPDATE dbo.CannabisSales
SET CategoryID = (SELECT CategoryID FROM dbo.ProductCategory WHERE ProductCategory = 'Edibles')
WHERE ProductType = 'Infused Edible';

-- Assign 'Vape' Category
UPDATE dbo.CannabisSales
SET CategoryID = (SELECT CategoryID FROM dbo.ProductCategory WHERE ProductCategory = 'Vape')
WHERE ProductType = 'Vape Cartridge';

-- Assign 'Extracts' Category
UPDATE dbo.CannabisSales
SET CategoryID = (SELECT CategoryID FROM dbo.ProductCategory WHERE ProductCategory = 'Extracts')
WHERE ProductType = 'Extract for Inhalation';

-- Assign 'Other Non-Smokeable' Category
UPDATE dbo.CannabisSales
SET CategoryID = (SELECT CategoryID FROM dbo.ProductCategory WHERE ProductCategory = 'Other Non-Smokeable')
WHERE ProductType = 'Other Non-Smokeable';

-- 📌 data_validation_queries.sql --

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
