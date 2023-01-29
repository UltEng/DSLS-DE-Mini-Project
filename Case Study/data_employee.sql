SELECT 
	a.EmployeeID,
	a.FirstName,
	a.LastName,
	a.Title,
	COUNT(b.OrderID) as total_orders,
	AVG(c.UnitPrice * c.Quantity * (1-c.Discount)) as avg_sales_earned,
	SUM(c.UnitPrice * c.Quantity * (1-c.Discount)) as total_sales_earned
FROM Employees a
JOIN Orders b 
ON a.EmployeeID = b.EmployeeID 
JOIN [Order Details] c 
ON b.OrderID = c.OrderID 
GROUP BY 
	a.EmployeeID,
	a.FirstName,
	a.LastName,
	a.Title
ORDER BY COUNT(b.OrderID), AVG(c.UnitPrice * c.Quantity * (1-c.Discount)), SUM(c.UnitPrice * c.Quantity * (1-c.Discount))