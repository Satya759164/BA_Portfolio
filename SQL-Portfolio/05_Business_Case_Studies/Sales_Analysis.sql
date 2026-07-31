-- =====================================================
-- Topic: Sales Analysis
-- Description: Analyze sales performance
-- =====================================================

-- Example 1: Total sales

SELECT SUM(Amount) AS TotalSales
FROM Orders;

---------------------------------------------------------

-- Example 2: Average order value

SELECT AVG(Amount) AS AverageOrderValue
FROM Orders;

---------------------------------------------------------

-- Example 3: Highest order amount

SELECT MAX(Amount) AS HighestOrderValue
FROM Orders;

---------------------------------------------------------

-- Business Scenario

-- Display the top 5 highest-value orders.

SELECT OrderID,
       CustomerID,
       Amount
FROM Orders
ORDER BY Amount DESC
LIMIT 5;
