select
	DATEPART(MONTH, b.OrderDate) as "month",
	COUNT(DISTINCT a.CustomerID) as total_customer
FROM Customers a
JOIN Orders b
ON a.CustomerID = b.CustomerID 
WHERE DATEPART(YEAR, b.OrderDate) = 1997
GROUP BY DATEPART(MONTH, b.OrderDate)