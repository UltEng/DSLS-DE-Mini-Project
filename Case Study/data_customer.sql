with last_order as (
select 
	CustomerID,
	CompanyName,
	OrderDate as last_order_date
from (select
			a.CustomerID,
			a.CompanyName,
			b.OrderDate,
			DENSE_RANK () over(PARTITION by a.CustomerID ORDER BY b.OrderDate DESC) as rnk
		from Customers a
		join Orders b
		on a.CustomerID = b.CustomerID) subq
where rnk = 1
), 
total_spend as(
select 
	a.CustomerID,
	a.CompanyName,
	COUNT(b.OrderID) as frequency,
	SUM(c.UnitPrice * c.Quantity * (1-c.Discount)) as moneter
from Customers a
join Orders b 
on a.CustomerID = b.CustomerID
join [Order Details] c 
on b.OrderID = c.OrderID 
group BY 
	a.CustomerID,
	a.CompanyName
)
select 
	lo.CustomerID,
	lo.CompanyName,
	lo.last_order_date,
	DATEDIFF(DAY, lo.last_order_date, '1998-05-07') as recency,
	ts.frequency,
	ts.moneter
from last_order lo
join total_spend ts 
on lo.CustomerID = ts.CustomerID