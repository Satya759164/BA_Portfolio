-- =====================================================
-- Topic: SELECT Statement
-- Description: Retrieve data from a database table
-- =====================================================

-- Example 1: Retrieve all columns

SELECT *
FROM Customers;

---------------------------------------------------------

-- Example 2: Retrieve specific columns

SELECT CustomerID,
       CustomerName,
       City
FROM Customers;

---------------------------------------------------------

-- Example 3: Retrieve unique cities

SELECT DISTINCT City
FROM Customers;

---------------------------------------------------------

-- Example 4: Rename column using alias

SELECT CustomerName AS Customer,
       City AS Location
FROM Customers;

---------------------------------------------------------

-- Example 5: Retrieve customer names in alphabetical order

SELECT CustomerName
FROM Customers
ORDER BY CustomerName;

---------------------------------------------------------

-- Business Scenario

-- Retrieve customer details for business reporting.

SELECT CustomerID,
       CustomerName,
       Email,
       City
FROM Customers;
