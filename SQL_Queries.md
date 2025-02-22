# 📌 SQL Queries Documentation

## 📂 Data Insertion & Validation Queries

### 📌 Data Insertion: Cannabis Sales Table
```sql
INSERT INTO dbo.CannabisSales (MonthEnding, ProductType, RetailSalesAmount, Market)
VALUES
('2025-01-25', 'Usable Cannabis (Flower)', 2819150.84, 'Adult Use'),
('2025-01-25', 'Vape Cartridge', 721223.06, 'Adult Use'),
('2025-01-25', 'Infused Edible', 688928.99, 'Adult Use'),
('2025-01-25', 'Extract for Inhalation', 868829.67, 'Adult Use'),
('2025-01-25', 'Other Non-Smokeable', 4343508.44, 'Medical');
```

###  Validation Queries

#### ✅ Check total sales
```sql
SELECT SUM(RetailSalesAmount) AS TotalSales FROM dbo.CannabisSales;
```

#### ✅ Ensure all distinct product types were inserted correctly
```sql
SELECT DISTINCT ProductType FROM dbo.CannabisSales;
```

#### ✅ Check row count after insertion
```sql
SELECT COUNT(*) AS TotalRows FROM dbo.CannabisSales;
```

#### ✅ Validate that all products have been assigned a CategoryID
```sql
SELECT * FROM dbo.CannabisSales WHERE CategoryID IS NULL;
```

## 🛠 Debugging Notes
- `MonthEnding` was originally formatted as "25-Jan" and was standardized to `YYYY-MM-DD`.
- The `ProductType` column was **standardized and mapped** to the `ProductCategory` table.
- Missing `CategoryID` values were identified using `SELECT * FROM dbo.CannabisSales WHERE CategoryID IS NULL;`, resolved with `UPDATE` queries.
- Queries were **cross-verified using Excel comparisons** before final validation.

##  Next Steps
1️⃣ **Perform deeper sales analysis by Market Type (Adult Use vs. Medical).**  
2️⃣ **Break down sales trends over time.**  
3️⃣ **Analyze total revenue and product performance per category (`analysis_queries.sql`).**  
4️⃣ **Prepare data for visualization in Power BI and Tableau.**  

📂 **For full documentation of SQL scripts, see the `/SQL/` folder in the repository.**
