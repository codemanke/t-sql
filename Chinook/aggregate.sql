use Chinook;

Select
FirstName + ' ' + Lastname as Customer, BillingCountry,
SUM(UnitPrice * Quantity) as SalesTotal,
AVG(UnitPrice * Quantity) as AvgPurchase
from Invoice
inner join Customer on Invoice.CustomerId = Customer.CustomerId
inner join InvoiceLine on InvoiceLine.InvoiceId = Invoice.InvoiceId
Group by FirstName, LastName, BillingCountry
order by BillingCountry, LastName;