DROP PROCEDURE IF EXISTS AddValidBooking;
DELIMITER //
create procedure AddValidBooking(in add_date date, in add_table int)
begin
declare ordernumbers int;
select count(*) into ordernumbers from Bookings where BookingDate = add_date and TableNumber = add_table;
start transaction;
insert into Bookings(BookingDate, TableNumber)
VALUES (add_date, add_table);
if ordernumbers = 0 then
    select concat('Table ', add_table, ' is not booked - start booking.') as 'Booking status';
    commit;
else
    select concat('Table ', add_table, ' is already booked - booking cancelled') as 'Booking status';
    rollback;
end if;
end //
DELIMITER ;

call AddValidBooking('2022-12-17', 6);