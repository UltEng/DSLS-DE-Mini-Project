with sales as(
SELECT 
	c.ProductName,
	DATEPART(MONTH ,a.OrderDate) as 'month',
	b.UnitPrice * b.Quantity as sales
FROM Orders a
JOIN [Order Details] b 
ON a.OrderID = b.OrderID 
JOIN Products c
ON b.ProductID = c.ProductID 
WHERE DATEPART(YEAR, a.OrderDate) = 1997
),
sales_ranking as(
SELECT
	ProductName, 
	"month",
	SUM(sales) as sales,
	row_number() over (partition by "month" order by sum(sales) desc) as sales_rank 
FROM sales
GROUP BY ProductName, "month"
)
SELECT 
	ProductName,
	"month",
	sales
FROM sales_ranking
where sales_rank BETWEEN 1 and 5