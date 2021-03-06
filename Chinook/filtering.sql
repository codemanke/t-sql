use Chinook;

Select FirstName + ' ' + LastName as Name, Email, Country,
InvoiceId, InvoiceDate, Total
From Customer
Inner join Invoice on Invoice.CustomerId = Customer.CustomerId
where (country = 'Denmark'
or Country = 'Canada')
and Total > 5
order by Total desc;