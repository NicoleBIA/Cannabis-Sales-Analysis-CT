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
