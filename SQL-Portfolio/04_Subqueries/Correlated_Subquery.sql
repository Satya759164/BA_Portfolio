-- =====================================================
-- Topic: Correlated Subquery
-- Description: Executes once for every row of the outer query
-- =====================================================

-- Example 1: Find customers who have raised more than one ticket

SELECT CustomerID,
       CustomerName
FROM Customers c
WHERE (
    SELECT COUNT(*)
    FROM Tickets t
    WHERE t.CustomerID = c.CustomerID
) > 1;

---------------------------------------------------------

-- Example 2: Find agents handling more than three tickets

SELECT AgentID,
       AgentName
FROM Agents a
WHERE (
    SELECT COUNT(*)
    FROM Tickets t
    WHERE t.AgentID = a.AgentID
) > 3;

---------------------------------------------------------

-- Business Scenario

-- Identify customers with multiple support requests.

SELECT CustomerID,
       CustomerName
FROM Customers c
WHERE (
    SELECT COUNT(*)
    FROM Tickets t
    WHERE t.CustomerID = c.CustomerID
) > 1;
