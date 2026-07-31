-- =====================================================
-- Topic: MIN()
-- Description: Returns the minimum value
-- =====================================================

-- Example 1: Lowest order amount

SELECT MIN(Amount) AS LowestOrderValue
FROM Orders;

---------------------------------------------------------

-- Example 2: Earliest ticket creation date

SELECT MIN(CreatedDate) AS FirstTicket
FROM Tickets;

---------------------------------------------------------

-- Business Scenario

-- Find the earliest support ticket created.

SELECT MIN(CreatedDate) AS FirstTicketDate
FROM Tickets;
