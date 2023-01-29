CREATE PROCEDURE SelectCustomersID @CustomerID nvarchar(10)
AS
SELECT 
	a.CustomerID,
	b.CompanyName, 
	a.OrderID,
	a.OrderDate,
	a.RequiredDate,
	a.ShippedDate
FROM Orders a
JOIN Customers b 
ON a.CustomerID = b.CustomerID 
WHERE a.CustomerID = @CustomerID