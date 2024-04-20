DELIMITER //

CREATE PROCEDURE AddBooking (IN booking_id INT, IN table_no INT, IN FName VARCHAR(45), IN LName VARCHAR(45), IN booking_slot TIME, IN staff_id INT, IN customer_id INT)
BEGIN
INSERT INTO Bookings (BookingID, TableNo, GuestFirstName, GuestLastName, BookingSlot, StaffID, CustomerID) VALUES (booking_id, table_no, FName, LName, booking_slot, staff_id, customer_id);
SELECT CONCAT("New booking added.") AS Confirmation;
END //

DELIMITER ;

CALL AddBooking (7, 12, "Romario", "Benn", "14:30:00", 5, 6);