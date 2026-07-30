-- =====================================================
-- Topic: ORDER BY Clause
-- Description: Sort records in ascending or descending order
-- =====================================================

-- Example 1: Sort tickets by Ticket ID (Ascending)

SELECT *
FROM Tickets
ORDER BY TicketID ASC;

---------------------------------------------------------

-- Example 2: Sort tickets by Created Date (Newest First)

SELECT TicketID,
       Subject,
       CreatedDate
FROM Tickets
ORDER BY CreatedDate DESC;

---------------------------------------------------------

-- Example 3: Sort customers alphabetically

SELECT CustomerID,
       CustomerName
FROM Customers
ORDER BY CustomerName ASC;

---------------------------------------------------------

-- Example 4: Sort tickets by Priority

SELECT TicketID,
       Subject,
       Priority
FROM Tickets
ORDER BY Priority ASC;

---------------------------------------------------------

-- Example 5: Sort tickets by Status and Created Date

SELECT TicketID,
       Subject,
       Status,
       CreatedDate
FROM Tickets
ORDER BY Status ASC,
         CreatedDate DESC;

---------------------------------------------------------

-- Example 6: Sort agents by Name

SELECT AgentID,
       AgentName
FROM Agents
ORDER BY AgentName ASC;

---------------------------------------------------------

-- Business Scenario

-- Display recently created tickets first for the support team dashboard.

SELECT TicketID,
       Subject,
       Priority,
       Status,
       CreatedDate
FROM Tickets
ORDER BY CreatedDate DESC;
