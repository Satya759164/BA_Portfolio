-- =====================================================
-- Topic: RIGHT JOIN
-- Description: Returns all records from the right table
--              and matching records from the left table
-- =====================================================

-- Example 1: Retrieve all tickets with customer details

SELECT
    c.CustomerName,
    t.TicketID,
    t.Subject,
    t.Status
FROM Customers c
RIGHT JOIN Tickets t
ON c.CustomerID = t.CustomerID;

---------------------------------------------------------

-- Example 2: Retrieve all tickets with assigned agent details

SELECT
    a.AgentName,
    t.TicketID,
    t.Priority
FROM Agents a
RIGHT JOIN Tickets t
ON a.AgentID = t.AgentID;

---------------------------------------------------------

-- Example 3: Retrieve all ticket categories

SELECT
    c.CategoryName,
    t.TicketID,
    t.Subject
FROM Categories c
RIGHT JOIN Tickets t
ON c.CategoryID = t.CategoryID;

---------------------------------------------------------

-- Business Scenario

-- Display every support ticket, even if customer information is unavailable.

SELECT
    c.CustomerName,
    t.TicketID,
    t.Status
FROM Customers c
RIGHT JOIN Tickets t
ON c.CustomerID = t.CustomerID;
