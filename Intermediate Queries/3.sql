SELECT TOP 5
	c.ProductName,
	SUM(b.Quantity) as Quantity
FROM Orders a
JOIN [Order Details] b
ON a.OrderID = b.OrderID 
JOIN Products c 
ON b.ProductID = c.ProductID 
WHERE DATEPART(YEAR, a.OrderDate) = 1997 and DATEPART(Month, a.OrderDate) = 1
GROUP BY c.ProductName 
ORDER BY SUM(b.Quantity) DESC