DELIMITER //

CREATE PROCEDURE CheckBooking (IN booking_slot TIME, IN Table_no INT)
BEGIN
DECLARE IsBooked BIT;
SELECT EXISTS (SELECT * FROM Bookings WHERE BookingSlot = booking_slot AND TableNo = Table_no) INTO IsBooked;
IF IsBooked = 1 THEN 
SELECT CONCAT("Table", Table_no, " is already booked.") AS "Booking Status";
else
SELECT CONCAT("Table", Table_no, " is available for booking.") AS "Booking Status";
END IF;
END//

DELIMITER ;

CALL CheckBooking("17:30:00", 15);