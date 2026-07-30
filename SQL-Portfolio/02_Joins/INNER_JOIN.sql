-- =====================================================
-- Topic: INNER JOIN
-- Description: Returns matching records from both tables
-- =====================================================

-- Example 1: Retrieve customer details with their tickets

SELECT
    c.CustomerID,
    c.CustomerName,
    t.TicketID,
    t.Subject,
    t.Status
FROM Customers c
INNER JOIN Tickets t
ON c.CustomerID = t.CustomerID;

---------------------------------------------------------

-- Example 2: Retrieve agents with assigned tickets

SELECT
    a.AgentID,
    a.AgentName,
    t.TicketID,
    t.Priority
FROM Agents a
INNER JOIN Tickets t
ON a.AgentID = t.AgentID;

---------------------------------------------------------

-- Example 3: Retrieve ticket categories

SELECT
    t.TicketID,
    t.Subject,
    c.CategoryName
FROM Tickets t
INNER JOIN Categories c
ON t.CategoryID = c.CategoryID;

---------------------------------------------------------

-- Business Scenario

-- Generate a report showing customers along with their support tickets.

SELECT
    c.CustomerName,
    t.TicketID,
    t.Status
FROM Customers c
INNER JOIN Tickets t
ON c.CustomerID = t.CustomerID;
