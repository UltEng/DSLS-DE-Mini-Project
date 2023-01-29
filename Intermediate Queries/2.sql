select 
	FirstName,
	LastName,
	FirstName + ' ' + LastName as FullName
from Employees 
WHERE Title = 'Sales Representative'