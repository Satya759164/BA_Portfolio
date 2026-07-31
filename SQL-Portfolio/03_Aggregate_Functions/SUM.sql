-- =====================================================
-- Topic: SUM()
-- Description: Calculates the total value
-- =====================================================

-- Example 1: Total sales amount

SELECT SUM(Amount) AS TotalSales
FROM Orders;

---------------------------------------------------------

-- Example 2: Total ticket resolution hours

SELECT SUM(ResolutionHours) AS TotalHours
FROM Tickets;

---------------------------------------------------------

-- Business Scenario

-- Calculate total revenue generated.

SELECT SUM(Amount) AS TotalRevenue
FROM Orders;
