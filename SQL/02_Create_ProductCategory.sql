-- 📌 create_product_category.sql --

-- Create Product Category Table
CREATE TABLE dbo.ProductCategory (
    CategoryID INT PRIMARY KEY IDENTITY(1,1),
    ProductCategory NVARCHAR(50) UNIQUE NOT NULL
);

-- Insert Standardized Categories
INSERT INTO dbo.ProductCategory (ProductCategory)
VALUES 
('Flower'),
('Edibles'),
('Vape'),
('Extracts'),
('Other Non-Smokeable');

-- 📌 update_category_ids.sql --

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
