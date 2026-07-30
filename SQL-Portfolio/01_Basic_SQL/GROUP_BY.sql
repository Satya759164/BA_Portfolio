-- =====================================================
-- Topic: GROUP BY Clause
-- Description: Group records to generate summarized results
-- =====================================================

-- Example 1: Count tickets by Status

SELECT Status,
       COUNT(*) AS TotalTickets
FROM Tickets
GROUP BY Status;

---------------------------------------------------------

-- Example 2: Count tickets by Priority

SELECT Priority,
       COUNT(*) AS TotalTickets
FROM Tickets
GROUP BY Priority;

---------------------------------------------------------

-- Example 3: Count tickets assigned to each Agent

SELECT AssignedAgent,
       COUNT(*) AS TotalAssignedTickets
FROM Tickets
GROUP BY AssignedAgent;

---------------------------------------------------------

-- Example 4: Count customers by City

SELECT City,
       COUNT(*) AS TotalCustomers
FROM Customers
GROUP BY City;

---------------------------------------------------------

-- Example 5: Count tickets by Department

SELECT Department,
       COUNT(*) AS TotalTickets
FROM Tickets
GROUP BY Department;

---------------------------------------------------------

-- Example 6: Count resolved tickets by Agent

SELECT AssignedAgent,
       COUNT(*) AS ResolvedTickets
FROM Tickets
WHERE Status = 'Resolved'
GROUP BY AssignedAgent;

---------------------------------------------------------

-- Business Scenario

-- Generate a report showing the total number of tickets under each status.

SELECT Status,
       COUNT(*) AS TotalTickets
FROM Tickets
GROUP BY Status;
