- 📌 update_category_ids.sql --

-- ✅ Purpose: Assigns a CategoryID to each product type in CannabisSales.
-- ✅ Why It Matters: Enables category-based filtering and analysis.

UPDATE dbo.CannabisSales
SET CategoryID = (SELECT CategoryID FROM dbo.ProductCategory WHERE ProductCategory = 'Flower')
WHERE ProductType = 'Usable Cannabis (Flower)';

UPDATE dbo.CannabisSales
SET CategoryID = (SELECT CategoryID FROM dbo.ProductCategory WHERE ProductCategory = 'Edibles')
WHERE ProductType = 'Infused Edible';

UPDATE dbo.CannabisSales
SET CategoryID = (SELECT CategoryID FROM dbo.ProductCategory WHERE ProductCategory = 'Vape')
WHERE ProductType = 'Vape Cartridge';

UPDATE dbo.CannabisSales
SET CategoryID = (SELECT CategoryID FROM dbo.ProductCategory WHERE ProductCategory = 'Extracts')
WHERE ProductType = 'Extract for Inhalation';

UPDATE dbo.CannabisSales
SET CategoryID = (SELECT CategoryID FROM dbo.ProductCategory WHERE ProductCategory = 'Other Non-Smokeable')
WHERE ProductType = 'Other Non-Smokeable';
