-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT Products.ProductName, Categories.CategoryName
FROM Products
JOIN Categories
ON Products.CategoryID = Categories.CategoryID;


-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.


-- DISPLAYS 337 records (UNABLE TO GET 429 records)
SELECT Orders.OrderID, Shippers.ShipperName
FROM Orders
JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
WHERE Orders.OrderDate < '2012-08-09';



-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT Products.ProductName, OrderDetails.Quantity
FROM OrderDetails
JOIN Products
ON OrderDetails.ProductID = Products.ProductID
WHERE OrderDetails.OrderID = 10251
ORDER BY Products.ProductName ASC;


-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
