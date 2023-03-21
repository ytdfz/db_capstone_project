DROP PROCEDURE IF EXISTS CheckBooking;
DELIMITER //
CREATE PROCEDURE CheckBooking(IN date DATE, IN id INT)
BEGIN
DECLARE status int;
select count(*) into status from Bookings where BookingDate = TargetDate AND TableNumber = TableNo;
IF status = 0 Then select concat('Table ', TableNo, ' is not booked') as 'Booking status';
else select concat('Table ', TableNo, ' is already booked') as 'Booking status';
END if; 
END //
DELIMITER ;