-- =====================================================
-- Topic: CTMS Ticket Analysis
-- Description: Analyze support ticket data
-- =====================================================

-- Example 1: Open tickets

SELECT *
FROM Tickets
WHERE Status = 'Open';

---------------------------------------------------------

-- Example 2: High priority tickets

SELECT *
FROM Tickets
WHERE Priority = 'High';

---------------------------------------------------------

-- Example 3: Tickets by status

SELECT Status,
       COUNT(*) AS TotalTickets
FROM Tickets
GROUP BY Status;

---------------------------------------------------------

-- Example 4: Tickets assigned to each agent

SELECT AgentID,
       COUNT(*) AS TotalTickets
FROM Tickets
GROUP BY AgentID;

---------------------------------------------------------

-- Business Scenario

-- Display the top 5 agents handling the highest number of tickets.

SELECT AgentID,
       COUNT(*) AS TotalTickets
FROM Tickets
GROUP BY AgentID
ORDER BY TotalTickets DESC
LIMIT 5;
