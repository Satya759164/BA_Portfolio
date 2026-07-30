-- =====================================================
-- Topic: SELF JOIN
-- Description: Join a table with itself
-- =====================================================

-- Example 1: Display employees and their managers

SELECT
    e.EmployeeID,
    e.EmployeeName AS Employee,
    m.EmployeeName AS Manager
FROM Employees e
LEFT JOIN Employees m
ON e.ManagerID = m.EmployeeID;

---------------------------------------------------------

-- Example 2: Display agents reporting to Team Leads

SELECT
    a.AgentName,
    l.AgentName AS TeamLead
FROM Agents a
LEFT JOIN Agents l
ON a.TeamLeadID = l.AgentID;

---------------------------------------------------------

-- Business Scenario

-- Retrieve employees along with their reporting managers.

SELECT
    e.EmployeeName,
    m.EmployeeName AS ReportingManager
FROM Employees e
LEFT JOIN Employees m
ON e.ManagerID = m.EmployeeID;
