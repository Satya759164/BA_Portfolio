-- =====================================================
-- Topic: WHERE Clause
-- Description: Filter records based on specific conditions
-- =====================================================

-- Example 1: Retrieve all open tickets

SELECT *
FROM Tickets
WHERE Status = 'Open';

---------------------------------------------------------

-- Example 2: Retrieve high priority tickets

SELECT TicketID,
       Subject,
       Priority
FROM Tickets
WHERE Priority = 'High';

---------------------------------------------------------

-- Example 3: Retrieve tickets assigned to a specific agent

SELECT TicketID,
       Subject,
       AssignedAgent
FROM Tickets
WHERE AssignedAgent = 'John Smith';

---------------------------------------------------------

-- Example 4: Retrieve tickets created after a specific date

SELECT *
FROM Tickets
WHERE CreatedDate > '2025-01-01';

---------------------------------------------------------

-- Example 5: Retrieve tickets that are either Open or In Progress

SELECT TicketID,
       Subject,
       Status
FROM Tickets
WHERE Status IN ('Open', 'In Progress');

---------------------------------------------------------

-- Example 6: Retrieve tickets with priority other than Low

SELECT TicketID,
       Subject,
       Priority
FROM Tickets
WHERE Priority <> 'Low';

---------------------------------------------------------

-- Example 7: Retrieve customers from Jaipur

SELECT CustomerID,
       CustomerName,
       City
FROM Customers
WHERE City = 'Jaipur';

---------------------------------------------------------

-- Business Scenario

-- Find all unresolved high-priority tickets that require immediate attention.

SELECT TicketID,
       Subject,
       Priority,
       Status
FROM Tickets
WHERE Priority = 'High'
AND Status <> 'Resolved';
