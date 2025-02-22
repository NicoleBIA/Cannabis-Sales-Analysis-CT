-- create_product_category.sql --

-- Create Product Category Table
CREATE TABLE dbo.ProductCategory (
    CategoryID INT PRIMARY KEY IDENTITY(1,1),
    ProductCategory NVARCHAR(50) UNIQUE NOT NULL
);
