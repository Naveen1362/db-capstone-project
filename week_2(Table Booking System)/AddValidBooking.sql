DELIMITER //

CREATE PROCEDURE AddValidBooking (IN booking_slot TIME, IN table_no INT) 
BEGIN
DECLARE IsBooked BIT;
SELECT EXISTS (SELECT * FROM Bookings WHERE BookingSlot = booking_slot AND TableNo = table_no) INTO ISBooked;
START TRANSACTION;
IF IsBooked = 1 THEN
ROLLBACK;
SELECT CONCAT("Table", table_no, " is already booked - booking cancelled.") AS "Booking Status"; 
else
COMMIT;
SELECT CONCAT("Table", table_no, " is available for booking - table booked.") AS "Booking Status";
END IF;
END //

DELIMITER ;

CALL AddValidBooking("17:30:00", 18);