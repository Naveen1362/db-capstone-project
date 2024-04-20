DELIMITER //

CREATE PROCEDURE UpdateBooking (IN booking_id INT, IN booking_slot TIME)
BEGIN
UPDATE Bookings SET BookingSlot = booking_slot WHERE BookingID = booking_id;
SELECT CONCAT("Booking ", booking_id, " updated.") AS Confirmation;
END//

DELIMITER ;

CALL UpdateBooking(5, "16:30:00");