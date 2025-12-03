CREATE TABLE FactSales (
    FactSalesKey INT IDENTITY(1,1) PRIMARY KEY,
    CustomerKey INT NOT NULL,
    ProductKey INT NOT NULL,
    EmployeeKey INT NOT NULL,
    TimeKey INT NOT NULL,
    Quantity SMALLINT NOT NULL,
    UnitPrice MONEY NOT NULL,
    Discount FLOAT NOT NULL,
    TotalAmount AS (Quantity * UnitPrice * (1 - Discount)) PERSISTED,
    CONSTRAINT FK_FactSales_Customer FOREIGN KEY (CustomerSK) REFERENCES DimCustomer(CustomerSK),
    CONSTRAINT FK_FactSales_Product FOREIGN KEY (ProductSK) REFERENCES DimProduct(ProductSK),
    CONSTRAINT FK_FactSales_Employee FOREIGN KEY (EmployeeSK) REFERENCES DimEmployee(EmployeeSK),
    CONSTRAINT FK_FactSales_Time FOREIGN KEY (TimeSK) REFERENCES DimTime(TimeSK)
);
