SELECT
	DISTINCT c.CompanyName 
FROM Orders a
JOIN [Order Details] b 
ON a.OrderID = b.OrderID 
JOIN Customers c 
ON a.CustomerID = c.CustomerID 
WHERE 
	DATEPART(YEAR, a.OrderDate) = 1997 and 
	UnitPrice * Quantity > 500 