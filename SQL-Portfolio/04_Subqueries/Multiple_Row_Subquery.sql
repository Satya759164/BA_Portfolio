-- =====================================================
-- Topic: Multiple Row Subquery
-- Description: Returns multiple values from the subquery
-- =====================================================

-- Example 1: Find customers who have raised tickets

SELECT CustomerName
FROM Customers
WHERE CustomerID IN (
    SELECT CustomerID
    FROM Tickets
);

---------------------------------------------------------

-- Example 2: Find agents assigned to open tickets

SELECT AgentName
FROM Agents
WHERE AgentID IN (
    SELECT AgentID
    FROM Tickets
    WHERE Status = 'Open'
);

---------------------------------------------------------

-- Example 3: Find customers from cities where tickets exist

SELECT CustomerName
FROM Customers
WHERE City IN (
    SELECT City
    FROM Customers
    WHERE CustomerID IN (
        SELECT CustomerID
        FROM Tickets
    )
);

---------------------------------------------------------

-- Business Scenario

-- Retrieve all customers who have submitted at least one support ticket.

SELECT CustomerName
FROM Customers
WHERE CustomerID IN (
    SELECT CustomerID
    FROM Tickets
);
