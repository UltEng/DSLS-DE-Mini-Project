SELECT
	b.CompanyName 
FROM Orders a
JOIN Customers b
ON a.CustomerID  = b.CustomerID 
JOIN [Order Details] c
ON a.OrderID = c.OrderID 
JOIN Products d
ON c.ProductID = d.ProductID 
WHERE 
		DATEPART(YEAR, a.OrderDate) = 1997 and 
		DATEPART(Month, a.OrderDate) = 6 AND 
		d.ProductName = 'Chai'