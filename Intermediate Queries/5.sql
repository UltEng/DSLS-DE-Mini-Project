SELECT
	'Pembelian <= 100' as jumlah_pembelian,
	COUNT(DISTINCT OrderID) as jumlah_order
FROM [Order Details] 
WHERE UnitPrice * Quantity <= 100 
UNION
SELECT
	'100 < Pembelian <= 250 ' as jumlah_pembelian,
	COUNT(DISTINCT OrderID) as jumlah_order
FROM [Order Details] 
WHERE UnitPrice * Quantity > 100  and UnitPrice * Quantity <= 250
UNION
SELECT
	'250 < Pembelian <= 500 ' as jumlah_pembelian,
	COUNT(DISTINCT OrderID) as jumlah_order
FROM [Order Details] 
WHERE UnitPrice * Quantity > 250  and UnitPrice * Quantity <= 500
UNION
SELECT
	'Pembelian > 500 ' as jumlah_pembelian,
	COUNT(DISTINCT OrderID) as jumlah_order
FROM [Order Details] 
WHERE UnitPrice * Quantity > 500 