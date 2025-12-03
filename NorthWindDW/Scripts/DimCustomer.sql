CREATE TABLE DimCustomer (
    CustomerSK INT IDENTITY(1,1) PRIMARY KEY,
    CustomerID NCHAR(5) NOT NULL,   -- Clave original de OLTP
    CompanyName NVARCHAR(100),
    ContactName NVARCHAR(100),
    City NVARCHAR(50),
    Country NVARCHAR(50)
);
