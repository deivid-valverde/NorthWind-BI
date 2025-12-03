CREATE TABLE DimProduct (
    ProductSK INT IDENTITY(1,1) PRIMARY KEY,
    ProductID INT NOT NULL,  -- Clave original de OLTP
    ProductName NVARCHAR(100),
    Category NVARCHAR(50),
    Supplier NVARCHAR(50),
    UnitPrice MONEY
);
