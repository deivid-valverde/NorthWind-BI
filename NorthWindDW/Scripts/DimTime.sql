CREATE TABLE DimTime (
    TimeSK INT PRIMARY KEY,  -- Formato YYYYMMDD
    [Date] DATE NOT NULL,
    Day INT,
    Month INT,
    Quarter INT,
    Year INT
);
