-- =====================================================
-- Topic: Business Reporting
-- Description: Generate business reports using SQL
-- =====================================================

-- Example 1: Total customers

SELECT COUNT(*) AS TotalCustomers
FROM Customers;

---------------------------------------------------------

-- Example 2: Total tickets

SELECT COUNT(*) AS TotalTickets
FROM Tickets;

---------------------------------------------------------

-- Example 3: Tickets by department

SELECT Department,
       COUNT(*) AS TotalTickets
FROM Tickets
GROUP BY Department;

---------------------------------------------------------

-- Example 4: Average ticket resolution time

SELECT AVG(ResolutionHours) AS AverageResolutionTime
FROM Tickets;

---------------------------------------------------------

-- Business Scenario

-- Generate a business summary report showing customer count, ticket count, and average resolution time.

SELECT
    (SELECT COUNT(*) FROM Customers) AS TotalCustomers,
    (SELECT COUNT(*) FROM Tickets) AS TotalTickets,
    (SELECT AVG(ResolutionHours) FROM Tickets) AS AverageResolutionTime;
