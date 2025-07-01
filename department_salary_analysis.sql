
WITH OverallAverage AS (
    SELECT AVG(Salary) AS OverallAvgSalary
    FROM Employees
)
SELECT
    d.Name AS DepartmentName,
    AVG(e.Salary) AS AverageSalary,
    COUNT(*) AS NumberOfEmployees
FROM Employees e
JOIN Departments d
    ON e.DepartmentID = d.DepartmentID
GROUP BY d.Name
HAVING AVG(e.Salary) > (SELECT OverallAvgSalary FROM OverallAverage);
