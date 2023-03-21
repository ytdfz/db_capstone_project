DROP PROCEDURE IF EXISTS UpdateBooking;

DELIMITER //
CREATE PROCEDURE UpdateBooking(update_bookingid int, update_bookingdate date)
begin
update Bookings set BookingDate = update_bookingdate where BookingID = update_bookingid;
select concat('Booking ', update_bookingid, ' updated') as 'Confirmation';
end //
DELIMITER ;

call UpdateBooking(9, "2022-12-31");