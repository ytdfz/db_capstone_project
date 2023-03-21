DROP PROCEDURE IF EXISTS CancelBooking;

DELIMITER //
CREATE PROCEDURE CancelBooking(cancel_bookingid int)
begin
delete from Bookings where BookingID = cancel_bookingid;
select concat('Booking ', cancel_bookingid, ' cancelled') as 'Confirmation';
end //
DELIMITER ;

call CancelBooking(9);