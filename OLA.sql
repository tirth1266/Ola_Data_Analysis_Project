select * from Bookings

--Retrieve all successful bookings
CREATE VIEW Successful_Bookings 
AS
SELECT * 
FROM Bookings
WHERE Booking_Status = 'Success';

SELECT * FROM Successful_Bookings;


--. Find the average ride distance for each vehicle type
CREATE VIEW Average_Distance 
AS
SELECT 
	vehicle_Type,
	AVG(Ride_Distance) AS average_distance
FROM Bookings
GROUP BY Vehicle_Type;

SELECT * FROM Average_Distance;

--. Get the total number of cancelled rides by customers
CREATE VIEW cancelled_rides 
AS
SELECT COUNT(*) AS total_cancelled
FROM bookings
WHERE Booking_Status = 'cancelled by Customer';

SELECT * FROM cancelled_rides

--. List the top 5 customers who booked the highest number of rides

CREATE VIEW Top_5_Customers
AS
SELECT 
	TOP 5 Customer_ID, 
	COUNT(Booking_ID) AS total_rides
FROM Bookings
GROUP BY Customer_ID
ORDER BY total_rides DESC;

SELECT * FROM Top_5_Customers;


--Get the number of rides cancelled by drivers due to personal and car-related issues
CREATE VIEW Rides_canceled_by_Drivers_P_C_Issues
AS
SELECT COUNT(*) AS Total_Canceled_Rides
FROM bookings
WHERE canceled_Rides_by_Driver = 'Personal & Car related issue';

SELECT * FROM Rides_canceled_by_Drivers_P_C_Issues;

--Find the maximum and minimum driver ratings for Prime Sedan bookings
CREATE VIEW max_min_rating
AS
SELECT Vehicle_Type ,
	MAX(Driver_Ratings) AS MAXIMUM_RATING,
	MIN(Driver_Ratings) AS  MINIMUM_RATING
FROM Bookings
WHERE Vehicle_Type = 'Prime Sedan'
GROUP BY Vehicle_Type;

SELECT * FROM max_min_rating;

--Retrieve all rides where payment was made using UPI
CREATE VIEW payment_upi
AS
SELECT * 
FROM Bookings
WHERE Payment_Method = 'UPI';

SELECT * FROM payment_upi;

 --Find the average customer rating per vehicle type
 CREATE VIEW avg_rating_customer
 AS
 SELECT 
	Vehicle_Type , 
	ROUND(AVG(Customer_Rating),2) AS avg_customer_rating
 FROM Bookings
 GROUP BY Vehicle_Type;

 SELECT * FROM avg_rating_customer;
 
--Calculate the total booking value of rides completed successfully.
CREATE VIEW rides_completed_successfully
AS
SELECT 
	SUM(Booking_Value) AS total_booking
FROM Bookings
WHERE Booking_Status = 'Success';

SELECT * FROM rides_completed_successfully;

--List all incomplete rides along with the reason.
CREATE VIEW incomplete_ride
AS
SELECT 
	Booking_ID, 
	Incomplete_Rides_Reason 
FROM bookings 
WHERE Incomplete_Rides != 0;

SELECT * FROM incomplete_ride;



