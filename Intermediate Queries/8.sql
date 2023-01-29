CREATE VIEW [Order Details] as
SELECT 
	a.OrderID,
	a.ProductID,
	b.ProductName,
	a.UnitPrice,
	a.Quantity,
	a.Discount,
	a.UnitPrice * a.Quantity * (1-a.Discount) as Harga_setelah_diskon
FROM [Order Details] a
JOIN Products b 
ON a.ProductID = b.ProductID 
