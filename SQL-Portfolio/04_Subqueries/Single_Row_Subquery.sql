-- =====================================================
-- Topic: Single Row Subquery
-- Description: Returns only one value from the subquery
-- =====================================================

-- Example 1: Find the customer who raised the latest ticket

SELECT CustomerName
FROM Customers
WHERE CustomerID = (
    SELECT CustomerID
    FROM Tickets
    ORDER BY CreatedDate DESC
    LIMIT 1
);

---------------------------------------------------------

-- Example 2: Find tickets with the highest priority level

SELECT *
FROM Tickets
WHERE Priority = (
    SELECT MAX(Priority)
    FROM Tickets
);

---------------------------------------------------------

-- Example 3: Find the agent with the highest salary

SELECT AgentName
FROM Agents
WHERE Salary = (
    SELECT MAX(Salary)
    FROM Agents
);

---------------------------------------------------------

-- Business Scenario

-- Retrieve the customer associated with the most recently created support ticket.

SELECT CustomerName
FROM Customers
WHERE CustomerID = (
    SELECT CustomerID
    FROM Tickets
    ORDER BY CreatedDate DESC
    LIMIT 1
);
