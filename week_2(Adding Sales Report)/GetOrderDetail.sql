-- TASK 2
PREPARE GetOrderDetail FROM 'SELECT OrderID, Quantity, BillAmount FROM Orders WHERE BookingID = ?';
SET @id = 1;
EXECUTE GetOrderDetail USING @id;