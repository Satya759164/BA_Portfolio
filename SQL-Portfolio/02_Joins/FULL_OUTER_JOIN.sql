-- =====================================================
-- Topic: FULL OUTER JOIN
-- Description: Returns all matching and non-matching
--              records from both tables.
-- Note: MySQL does not support FULL OUTER JOIN directly.
-- =====================================================

-- Example 1: Retrieve all customers and tickets

SELECT
    c.CustomerID,
    c.CustomerName,
    t.TicketID,
    t.Subject
FROM Customers c
LEFT JOIN Tickets t
ON c.CustomerID = t.CustomerID

UNION

SELECT
    c.CustomerID,
    c.CustomerName,
    t.TicketID,
    t.Subject
FROM Customers c
RIGHT JOIN Tickets t
ON c.CustomerID = t.CustomerID;

---------------------------------------------------------

-- Business Scenario

-- Generate a complete customer-ticket report including unmatched records.

SELECT
    c.CustomerName,
    t.TicketID,
    t.Status
FROM Customers c
LEFT JOIN Tickets t
ON c.CustomerID = t.CustomerID

UNION

SELECT
    c.CustomerName,
    t.TicketID,
    t.Status
FROM Customers c
RIGHT JOIN Tickets t
ON c.CustomerID = t.CustomerID;
