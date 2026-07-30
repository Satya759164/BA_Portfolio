-- =====================================================
-- Topic: LEFT JOIN
-- Description: Returns all records from the left table
--              and matching records from the right table
-- =====================================================

-- Example 1: Retrieve all customers and their tickets

SELECT
    c.CustomerID,
    c.CustomerName,
    t.TicketID,
    t.Subject,
    t.Status
FROM Customers c
LEFT JOIN Tickets t
ON c.CustomerID = t.CustomerID;

---------------------------------------------------------

-- Example 2: Retrieve all agents and assigned tickets

SELECT
    a.AgentID,
    a.AgentName,
    t.TicketID,
    t.Priority
FROM Agents a
LEFT JOIN Tickets t
ON a.AgentID = t.AgentID;

---------------------------------------------------------

-- Example 3: Retrieve all departments and their tickets

SELECT
    d.DepartmentName,
    t.TicketID,
    t.Subject
FROM Departments d
LEFT JOIN Tickets t
ON d.DepartmentID = t.DepartmentID;

---------------------------------------------------------

-- Business Scenario

-- Display all registered customers, including those who have never raised a support ticket.

SELECT
    c.CustomerID,
    c.CustomerName,
    t.TicketID,
    t.Status
FROM Customers c
LEFT JOIN Tickets t
ON c.CustomerID = t.CustomerID;
