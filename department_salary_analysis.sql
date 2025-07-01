SELECT
    d.Name AS DepartmentName,
    AVG(e.Salary) AS AverageSalary,
    COUNT(*) AS NumberOfEmployees
FROM Employees e
JOIN Departments d
    ON e.DepartmentID = d.DepartmentID
GROUP BY d.Name
HAVING AVG(e.Salary) > (
    SELECT AVG(Salary) FROM Employees
);
