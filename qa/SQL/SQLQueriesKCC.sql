/* Get all different customer names */
SELECT DISTINCT [CustomerName] as [Customer Name] FROM [KCC].[dbo].[Customers]

/* Get all customer names and notes */
SELECT [CustomerName], [Notes] FROM [KCC].[dbo].[Customers]

/* Get 3 customer names */
SELECT TOP (3) [CustomerName] as [Customer Name] FROM [KCC].[dbo].[Customers]

/* Get customers from Washington or New york */
SELECT * FROM [KCC].[dbo].[Customers] WHERE State='WA' OR State='NY'

/* Get customers from Washington, New york, or Utah */
SELECT * FROM [KCC].[dbo].[Customers] WHERE State IN ('WA','NY','UT')

/* Get customers starts with A */
SELECT * FROM [KCC].[dbo].[Customers] WHERE CustomerName LIKE 'A%'

/* JOIN */
SELECT OrderID, OrderDate, OrderTotal, CustomerName, Phone 
FROM dbo.Orders orders JOIN dbo.Customers customers
ON orders.CustomerID = customers.CustomerID 
ORDER BY orders.OrderTotal

/* FUNCTIONS */
SELECT sum(OrderTotal) FROM dbo.Orders
WHERE OrderDate >= Dateadd(month,-1,getdate())

/* QUERY DESIGNER */
SELECT Customers.CustomerName, Orders.OrderID, Orders.OrderDate, Orders.OrderTotal
FROM   Customers INNER JOIN Orders 
ON Customers.CustomerID = Orders.CustomerID