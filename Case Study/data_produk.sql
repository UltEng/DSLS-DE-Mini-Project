SELECT 
	c.ProductID, 
	c.ProductName,
	d.CategoryName,
	a.OrderDate,
	DATEPART(MONTH ,a.OrderDate) as bulan,
	DATEPART(YEAR ,a.OrderDate) as tahun,
	b.UnitPrice * b.Quantity as sales
FROM Orders a
JOIN [Order Details] b 
ON a.OrderID = b.OrderID 
JOIN Products c
ON b.ProductID = c.ProductID 
JOIN Categories d
ON c.CategoryID = d.CategoryID 
ORDER BY c.ProductID 