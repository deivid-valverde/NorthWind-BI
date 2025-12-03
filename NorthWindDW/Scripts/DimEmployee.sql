CREATE TABLE DimEmployee (
    EmployeeSK INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeID INT NOT NULL,  -- Clave original de OLTP
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Title NVARCHAR(50)
);
