## 📂 Data Insertion & Validation Queries
```sql
INSERT INTO dbo.CannabisSales (MonthEnding, ProductType, RetailSalesAmount, Market)
VALUES
('2025-01-25', 'Usable Cannabis (Flower)', 2819150.84, 'Adult Use'),
('2025-01-25', 'Vape Cartridge', 721223.06, 'Adult Use'),
('2025-01-25', 'Infused Edible', 688928.99, 'Adult Use'),
('2025-01-25', 'Extract for Inhalation', 868829.67, 'Adult Use'),
('2025-01-25', 'Other Non-Smokeable', 4343508.44, 'Medical');

Validation Query: Check total sales
SELECT SUM(RetailSalesAmount) AS TotalSales FROM dbo.CannabisSales;

Validation Query: Ensure all distinct product types were inserted correctly
SELECT DISTINCT ProductType FROM dbo.CannabisSales;

Validation Query: Check row count after insertion
SELECT COUNT(*) AS TotalRows FROM dbo.CannabisSales;

🛠 Debugging Notes:
MonthEnding was originally formatted as "25-Jan" and was changed to YYYY-MM-DD.
The ProductType column caused truncation errors; we renamed long values to "Other Non-Smokeable".
Insert script was re-run successfully after cleaning.
Queries were cross-verified using Excel comparisons before final validation.

Next Steps:
Perform deeper sales analysis by Market Type (Adult Use vs. Medical).
Break down sales trends over time.
Store additional analysis queries in analysis_queries.sql inside /SQL/ folder.

For full documentation of SQL scripts, see the /SQL/ folder in the repository.
