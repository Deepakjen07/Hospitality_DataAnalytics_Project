select sum(revenue_realized) as total_revenue from fact_bookings;
select count(booking_id) as total_booking from fact_bookings;
select sum(capacity) as total_capacity from fact_aggregated_bookings;
SELECT 10 DIV 5;
SELECT sum(successful_bookings) as total_sucessful_bookings from fact_aggregated_bookings;
delimiter //
create procedure total_revenue_1 ()
begin
select sum(revenue_realized) from fact_bookings;
end // 
delimiter ;

delimiter //
create procedure total_capacity_1 ()
begin
select sum(capacity) from fact_bookings;
end // 
delimiter ;

delimiter //
create procedure total_sucessful_bookings_1 ()
begin
select sum(successful_bookings) from fact_bookings;
end // 
delimiter ;

call total_sucessful_bookings_1 ();
call total_capacity_1 ();
select (total_sucessful_bookings_1 () div total_capacity_1 ());
