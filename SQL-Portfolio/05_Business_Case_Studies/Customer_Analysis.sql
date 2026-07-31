-- =====================================================
-- Topic: Customer Analysis
-- Description: Analyze customer data for business insights
-- =====================================================

-- Example 1: Total number of customers

SELECT COUNT(*) AS TotalCustomers
FROM Customers;

---------------------------------------------------------

-- Example 2: Customers by city

SELECT City,
       COUNT(*) AS TotalCustomers
FROM Customers
GROUP BY City
ORDER BY TotalCustomers DESC;

---------------------------------------------------------

-- Example 3: Customers who raised more than one ticket

SELECT CustomerID,
       COUNT(*) AS TotalTickets
FROM Tickets
GROUP BY CustomerID
HAVING COUNT(*) > 1;

---------------------------------------------------------

-- Example 4: Customers without any support tickets

SELECT c.CustomerID,
       c.CustomerName
FROM Customers c
LEFT JOIN Tickets t
ON c.CustomerID = t.CustomerID
WHERE t.TicketID IS NULL;

---------------------------------------------------------

-- Business Scenario

-- Identify the top 5 customers with the highest number of support tickets.

SELECT c.CustomerName,
       COUNT(t.TicketID) AS TotalTickets
FROM Customers c
INNER JOIN Tickets t
ON c.CustomerID = t.CustomerID
GROUP BY c.CustomerName
ORDER BY TotalTickets DESC
LIMIT 5;
