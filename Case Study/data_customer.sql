select 
	a.CustomerID,
	a.CompanyName,
	b.OrderDate,
	DATEPART(MONTH ,b.OrderDate) as bulan,
	DATEPART(YEAR ,b.OrderDate) as tahun,
	c.UnitPrice,
	c.Quantity,
	c.Discount,
	c.UnitPrice * c.Quantity as sales_no_discount,
	c.UnitPrice * c.Quantity * (1-c.Discount) as sales
from Customers a
join Orders b
on a.CustomerID = b.CustomerID 
join [Order Details] c
on b.OrderID = c.OrderID 