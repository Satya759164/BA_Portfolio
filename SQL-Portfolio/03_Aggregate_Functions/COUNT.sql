-- =====================================================
-- Topic: COUNT()
-- Description: Counts the number of records
-- =====================================================

-- Example 1: Total number of customers

SELECT COUNT(*) AS TotalCustomers
FROM Customers;

---------------------------------------------------------

-- Example 2: Total number of tickets

SELECT COUNT(*) AS TotalTickets
FROM Tickets;

---------------------------------------------------------

-- Example 3: Total resolved tickets

SELECT COUNT(*) AS ResolvedTickets
FROM Tickets
WHERE Status = 'Resolved';

---------------------------------------------------------

-- Business Scenario

-- Find the total number of open support tickets.

SELECT COUNT(*) AS OpenTickets
FROM Tickets
WHERE Status = 'Open';
