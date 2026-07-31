-- =====================================================
-- Topic: AVG()
-- Description: Calculates the average value
-- =====================================================

-- Example 1: Average ticket resolution time

SELECT AVG(ResolutionHours) AS AverageResolutionTime
FROM Tickets;

---------------------------------------------------------

-- Example 2: Average order value

SELECT AVG(Amount) AS AverageOrderValue
FROM Orders;

---------------------------------------------------------

-- Business Scenario

-- Find the average resolution time for support tickets.

SELECT AVG(ResolutionHours) AS AverageResolutionTime
FROM Tickets;
