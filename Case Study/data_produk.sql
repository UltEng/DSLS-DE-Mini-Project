SELECT 
	c.ProductID, 
	c.ProductName,
	d.CategoryName,
	DATEPART(MONTH ,a.OrderDate) as bulan,
	DATEPART(YEAR ,a.OrderDate) as tahun,
	SUM(b.Quantity) as quantity,
	SUM(b.UnitPrice * b.Quantity) as sales_no_discount,
	SUM(b.UnitPrice * b.Quantity * (1-b.Discount)) as sales
FROM Orders a
JOIN [Order Details] b 
ON a.OrderID = b.OrderID 
JOIN Products c
ON b.ProductID = c.ProductID 
JOIN Categories d
ON c.CategoryID = d.CategoryID 
GROUP BY 	
	c.ProductID, 
	c.ProductName,
	d.CategoryName,
	DATEPART(MONTH ,a.OrderDate),
	DATEPART(YEAR ,a.OrderDate)
ORDER BY c.ProductID, DATEPART(YEAR ,a.OrderDate)