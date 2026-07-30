-- =====================================================
-- Topic: HAVING Clause
-- Description: Filter grouped records based on aggregate values
-- =====================================================

-- Example 1: Show statuses having more than 10 tickets

SELECT Status,
       COUNT(*) AS TotalTickets
FROM Tickets
GROUP BY Status
HAVING COUNT(*) > 10;

---------------------------------------------------------

-- Example 2: Show agents handling more than 5 tickets

SELECT AssignedAgent,
       COUNT(*) AS TotalAssignedTickets
FROM Tickets
GROUP BY AssignedAgent
HAVING COUNT(*) > 5;

---------------------------------------------------------

-- Example 3: Show cities having more than 3 customers

SELECT City,
       COUNT(*) AS TotalCustomers
FROM Customers
GROUP BY City
HAVING COUNT(*) > 3;

---------------------------------------------------------

-- Example 4: Show departments with more than 20 tickets

SELECT Department,
       COUNT(*) AS TotalTickets
FROM Tickets
GROUP BY Department
HAVING COUNT(*) > 20;

---------------------------------------------------------

-- Example 5: Show priorities having more than 5 open tickets

SELECT Priority,
       COUNT(*) AS TotalTickets
FROM Tickets
WHERE Status = 'Open'
GROUP BY Priority
HAVING COUNT(*) > 5;

---------------------------------------------------------

-- Business Scenario

-- Identify support agents handling a high volume of tickets.

SELECT AssignedAgent,
       COUNT(*) AS TotalAssignedTickets
FROM Tickets
GROUP BY AssignedAgent
HAVING COUNT(*) >= 10;
