-- =====================================================
-- Topic: Employee Analysis
-- Description: Analyze employee information
-- =====================================================

-- Example 1: Employees by department

SELECT Department,
       COUNT(*) AS TotalEmployees
FROM Employees
GROUP BY Department;

---------------------------------------------------------

-- Example 2: Highest salary

SELECT MAX(Salary) AS HighestSalary
FROM Employees;

---------------------------------------------------------

-- Example 3: Average salary by department

SELECT Department,
       AVG(Salary) AS AverageSalary
FROM Employees
GROUP BY Department;

---------------------------------------------------------

-- Business Scenario

-- Identify departments with more than five employees.

SELECT Department,
       COUNT(*) AS TotalEmployees
FROM Employees
GROUP BY Department
HAVING COUNT(*) > 5;
