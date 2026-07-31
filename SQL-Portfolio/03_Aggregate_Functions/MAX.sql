-- =====================================================
-- Topic: MAX()
-- Description: Returns the maximum value
-- =====================================================

-- Example 1: Highest order amount

SELECT MAX(Amount) AS HighestOrderValue
FROM Orders;

---------------------------------------------------------

-- Example 2: Latest ticket creation date

SELECT MAX(CreatedDate) AS LatestTicket
FROM Tickets;

---------------------------------------------------------

-- Business Scenario

-- Find the most recently created support ticket.

SELECT MAX(CreatedDate) AS LatestTicketDate
FROM Tickets;
