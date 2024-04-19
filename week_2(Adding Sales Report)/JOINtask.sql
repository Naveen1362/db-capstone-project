-- TASK 2
SELECT a.CustomerID, CONCAT(a.GuestFirstName, " ", a.GuestLastName) AS FullName, b.OrderID, b.BillAmount AS Cost, c.cuisine AS MenuName, d.Name AS CourseName 
FROM
Bookings AS a INNER JOIN Orders AS b ON a.BookingID = b.BookingID 
INNER JOIN Menus AS c ON b.MenuID = c.MenuID 
INNER JOIN items AS d ON c.ItemID = d.ItemID WHERE BillAmount > 150 ORDER BY Cost ASC;