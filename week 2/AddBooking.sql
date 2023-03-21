DROP PROCEDURE IF EXISTS AddBooking;

DELIMITER //
CREATE PROCEDURE AddBooking(add_bookingid int, add_customerid int, add_tablenumber int, add_bookingdate date)
begin
insert into Bookings(BookingId, CustomerID, BookingDate, TableNumber)
values(add_bookingid, add_customerid, add_bookingdate, add_tablenumber);
select 'New booking added' as 'Confirmation';
end //
DELIMITER ;

call AddBooking(9, 3, 4, "2022-12-30");