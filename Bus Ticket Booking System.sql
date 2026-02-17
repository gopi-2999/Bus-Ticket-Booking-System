create database busbooking1
use busbooking1

CREATE TABLE users (user_id INT PRIMARY KEY ,pname VARCHAR(100),
email VARCHAR(100),age int,gender VARCHAR(20),phone VARCHAR(15))

CREATE TABLE buses (bus_id INT PRIMARY KEY ,bus_number VARCHAR(20),
bus_type VARCHAR(50),seats INT)

CREATE TABLE routes (route_id INT PRIMARY KEY ,pickup VARCHAR(100),
destination VARCHAR(100),distance_km INT)

CREATE TABLE schedules (schedule_id INT PRIMARY KEY ,bus_id INT
,route_id INT,departure_time DATETIME,arrival_time DATETIME,
FOREIGN KEY (bus_id) REFERENCES buses(bus_id),
FOREIGN KEY (route_id) REFERENCES routes(route_id))

CREATE TABLE bookings (booking_id INT PRIMARY KEY ,user_id INT,
schedule_id INT,seat_no INT,booking_date DATE,
FOREIGN KEY (user_id) REFERENCES users(user_id),
FOREIGN KEY (schedule_id) REFERENCES schedules(schedule_id))

CREATE TABLE payments (payment_id INT PRIMARY KEY ,booking_id INT,
amount INT,payment_date DATE,paymentstatus VARCHAR(20),
FOREIGN KEY (booking_id) REFERENCES bookings(booking_id))

CREATE TABLE feedback (feedback_id INT PRIMARY KEY ,
user_id INT,booking_id INT,rating INT,comments TEXT,
FOREIGN KEY (user_id) REFERENCES users(user_id),
FOREIGN KEY (booking_id) REFERENCES bookings(booking_id))

INSERT INTO users (user_id, pname, email, age, gender, phone) VALUES
(1,'Gopi ', 'gopi@example.com','22', 'male', '7904538967'),
(2,'Nivetha', 'nive@example.com','21','female', '9791441254'),
(3,'Yasar', 'yasar@example.com','20','male', '8925041862'),
(4,'Deepan', 'deepan@example.com','23','male', '9360442210'),
(5,'Mahi', 'mahi@example.com','18','female', '7339566796'),
(6,'Gowtham', 'gowtham@example.com','24','male', '9003976575'),
(7,'Raghul', 'raghul@example.com','21','male', '9360467228'),
(8,'Prem', 'prem@example.com','25','male', '9361081291'),
(9,'Prashanth', 'prashanth@example.com','41','male', '9655048600'),
(10,'Loke', 'loke@example.com','27','male', '8610502361'),
(11,'Kabilan', 'kabi@example.com','29','male', '9786104257'),
(12,'Irfan', 'irfan@example.com','31','male', '8056723627'),
(13,'Mani', 'mani@example.com','22','male', '9025915651'),
(14,'Aswin', 'aswin@example.com','20','male', '6383587713'),
(15,'Kani', 'kani@example.com','19','female', '9944633670'),
(16,'Naveen', 'naveen@example.com','23','male', '9677697224'),
(17,'Harish', 'harish@example.com','25','male', '8637618379'),
(18,'Karthi', 'karthi@example.com','36','male', '6382923665'),
(19,'Mugundhan', 'mugundhan@example.com','24','male', '9361234844'),
(20,'Priya Sharma', 'priya@example.com','34','female', '9988776655'),
(21,'Ravi Kumar', 'ravi@example.com','45','male', '9123456780');
select * from users

INSERT INTO buses (bus_id, bus_number, bus_type, seats) VALUES
(101,'TN46AC1395', 'AC Sleeper', 40),
(102,'TN61XY5678', 'Non-AC Seater', 50),
(103,'TN03CD1111', 'AC Sleeper', 42),
(104,'TN04EF2222', 'AC Seater', 48),
(105,'TN05GH3333', 'Non-AC Sleeper', 44),
(106,'TN06IJ4444', 'AC Sleeper', 52),
(107,'TN07KL5555', 'Non-AC Seater', 45),
(108,'TN08MN6666', 'AC Semi-Sleeper', 46),
(109,'TN09OP7777', 'Non-AC Semi-Sleeper', 40),
(110,'TN10QR8888', 'AC Sleeper', 50),
(111,'TN11ST9999', 'Non-AC Seater', 47),
(112,'TN12UV1212', 'AC Seater', 49),
(113,'TN13WX1313', 'AC Sleeper', 41),
(114,'TN14YZ1414', 'Non-AC Sleeper', 43),
(115,'TN15AB1515', 'AC Semi-Sleeper', 48),
(116,'TN16CD1616', 'AC Sleeper', 53),
(117,'TN17EF1717', 'Non-AC Semi-Sleeper', 45),
(118,'TN18GH1818', 'Non-AC Seater', 46),
(119,'TN19IJ1919', 'AC Sleeper', 50),
(120,'TN20KL2020', 'AC Seater', 44),
(121,'TN21MN2121', 'Non-AC Sleeper', 42);
select * from buses

INSERT INTO routes (route_id, pickup, destination, distance_km) VALUES
(1001,'Chennai', 'Perambalur', 260),
(1002,'Ariyalur', 'Chennai', 290),
(1003,'Madurai', 'Bangalore', 450),
(1004,'Chennai', 'Bangalore', 350),
(1005,'Hyderabad', 'Chennai', 630),
(1006,'Coimbatore', 'Madurai', 230),
(1007,'Trichy', 'Chennai', 330),
(1008,'Bangalore', 'Mysore', 150),
(1009,'Chennai', 'Pondicherry', 160),
(1010,'Hyderabad', 'Bangalore', 570),
(1011,'Chennai', 'Madurai', 460),
(1012,'Mumbai', 'Pune', 150),
(1013,'Delhi', 'Jaipur', 280),
(1014,'Lucknow', 'Varanasi', 320),
(1015,'Kolkata', 'Durgapur', 170),
(1016,'Bangalore', 'Chennai', 350),
(1017,'Coimbatore', 'Bangalore', 370),
(1018,'Hyderabad', 'Vijayawada', 275),
(1019,'Kochi', 'Trivandrum', 210),
(1020,'Ahmedabad', 'Surat', 270),
(1021,'Chennai', 'Coimbatore', 500);
select * from routes
select * from boardingpoint

INSERT INTO schedules (schedule_id, bus_id, route_id, departure_time, arrival_time) VALUES
(201,101, 1001, '2025-08-20 07:00:00', '2025-08-20 14:00:00'),
(202,102, 1002, '2025-08-21 09:00:00', '2025-08-21 16:00:00'),
(203,103, 1003, '2025-08-22 06:30:00', '2025-08-22 11:30:00'),
(204,104, 1004, '2025-08-22 20:00:00', '2025-08-23 06:30:00'),
(205,105, 1005, '2025-08-23 14:00:00', '2025-08-23 18:30:00'),
(206,106, 1006, '2025-08-24 08:00:00', '2025-08-24 13:00:00'),
(207,107, 1007, '2025-08-24 10:00:00', '2025-08-24 12:30:00'),
(208,108, 1008, '2025-08-25 05:30:00', '2025-08-25 08:30:00'),
(209,109, 1009, '2025-08-25 21:00:00', '2025-08-26 06:00:00'),
(210,110, 1010, '2025-08-26 06:00:00', '2025-08-26 12:30:00'),
(211,111, 1011, '2025-08-26 15:00:00', '2025-08-26 18:00:00'),
(212,112, 1012, '2025-08-27 07:00:00', '2025-08-27 11:00:00'),
(213,113, 1013, '2025-08-27 09:00:00', '2025-08-27 14:30:00'),
(214,114, 1014, '2025-08-28 06:00:00', '2025-08-28 09:00:00'),
(215,115, 1015, '2025-08-28 23:00:00', '2025-08-29 06:00:00'),
(216,116, 1016, '2025-08-29 04:30:00', '2025-08-29 09:30:00'),
(217,117, 1017, '2025-08-29 18:00:00', '2025-08-29 22:00:00'),
(218,118, 1018, '2025-08-30 07:30:00', '2025-08-30 12:00:00'),
(219,119, 1019, '2025-08-30 05:00:00', '2025-08-30 09:00:00'),
(220,120, 1020, '2025-08-31 05:30:00', '2025-08-31 08:30:00'),
(221,121, 1021, '2025-09-01 09:00:00', '2025-09-01 16:00:00');
select * from schedules

INSERT INTO bookings (booking_id, user_id, schedule_id, seat_no, booking_date) VALUES
(301,1, 201, 12, "2025-08-15"),
(302,2, 202, 25, "2025-08-16"),
(303,3, 203, 8, "2025-08-16"),
(304,4, 204, 15, "2025-08-17"),
(305,5, 205, 20, "2025-08-17"),
(306,6, 206, 5, "2025-08-18"),
(307,7, 207, 18, "2025-08-18"),
(308,8, 208, 30, "2025-08-19"),
(309,9, 209, 22, "2025-08-19"),
(310,10, 210, 9, "2025-08-20"),
(311,11, 211, 11, "2025-08-20"),
(312,12, 212, 4, "2025-08-21"),
(313,13, 213, 17, "2025-08-21"),
(314,14, 214, 28, "2025-08-22"),
(315,15, 215, 6, "2025-08-22"),
(316,16, 216, 13, "2025-08-23"),
(317,17, 217, 21, "2025-08-23"),
(318,18, 218, 10, "2025-08-24"),
(319,19, 219, 14, "2025-08-24"),
(320,20, 220, 19, "2025-08-25"),
(321,21, 221, 25,"2025-09-01");
select * from bookings

INSERT INTO payments (payment_id, booking_id, amount, payment_date, paymentstatus) VALUES
(401, 301, 750.00,'2025-08-15','Paid'),
(402, 302, 600.00,'2025-08-16','Pending'),
(403, 303, 900.00,'2025-08-16','Paid'),
(404, 304, 850.00,'2025-08-17','Paid'),
(405, 305, 500.00,'2025-08-17','Failed'),
(406, 306, 700.00,'2025-08-18','Paid'),
(407, 307, 1000.00,'2025-08-18','Paid'),
(408, 308, 550.00,'2025-08-19','Pending'),
(409, 309, 1200.00,'2025-08-19','Paid'),
(410, 310, 650.00,'2025-08-20','Paid'),
(411, 311, 800.00,'2025-08-20','Paid'),
(412, 312, 750.00,'2025-08-21','Pending'),
(413, 313, 900.00,'2025-08-21','Paid'),
(414, 314, 600.00,'2025-08-22','Failed'),
(415, 315, 1100.00,'2025-08-22','Paid'),
(416, 316, 950.00,'2025-08-23','Paid'),
(417, 317, 700.00,'2025-08-23','Pending'),
(418, 318, 850.00,'2025-08-24','Paid'),
(419, 319, 500.00,'2025-08-24','Paid'),
(420, 320, 1050.00,'2025-08-25','Paid'),
(421, 321, 650.00,"2025-09-01","Pending");
select * from payments

INSERT INTO feedback (feedback_id, user_id, booking_id, rating, comments) VALUES
(7101, 1, 301, 5, 'Excellent service, very comfortable journey.'),
(7102, 2, 302, 4, 'Good, but could improve timing.'),
(7103, 3, 303, 5, 'Clean bus and friendly staff.'),
(7104, 4, 304, 3, 'Average experience, seats were not so good.'),
(7105, 5, 305, 2, 'Bus was late and AC was not working.'),
(7106, 6, 306, 4, 'Overall good, but little noisy inside.'),
(7107, 7, 307, 5, 'On time and smooth travel, very satisfied!'),
(7108, 8, 308, 3, 'Service was okay, expected better punctuality.'),
(7109, 9, 309, 5, 'Great ride! Definitely booking again.'),
(7110, 10, 310, 4, 'Nice bus, but food stops were limited.'),
(7111, 11, 311, 5, 'Excellent staff and neat bus.'),
(7112, 12, 312, 3, 'Seats were a bit cramped for long travel.'),
(7113, 13, 313, 5, 'Superb experience, highly recommended.'),
(7114, 14, 314, 1, 'Worst trip, bus broke down.'),
(7115, 15, 315, 4, 'Good journey overall, minor delays.'),
(7116, 16, 316, 5, 'Very professional service and clean bus.'),
(7117, 17, 317, 4, 'Decent travel, but seat comfort could improve.'),
(7118, 18, 318, 5, 'Excellent timing and polite staff.'),
(7119, 19, 319, 3, 'Bus was okay, nothing special.'),
(7120, 20, 320, 5, 'Amazing experience, worth the price.'),
(7121, 21, 321, 4, 'Satisfied, but expected more legroom.');
select * from feedback

rename table routes to boardingpoint
select * from boardingpoint

select pname,age from users
select * from users where age =24
select * from users where age > 30
select * from users where age < 29
select * from users where age in (21,24,31)
select * from users where age between 30 and 50
select * from feedback where rating in (3,4,5)

select * from buses where bus_type = 'AC Sleeper' and seats = 50
select * from buses where bus_type = 'AC Sleeper' or seats = 45
select * from users where gender in ('male','female') and age >= 25
select * from buses where not (bus_type = 'AC Sleeper')
select * from buses where not (bus_type = 'AC Sleeper' and seats = 45)
select * from boardingpoint where destination like "p%"


select count(*) as result from payments
select sum(amount) as result from payments
select max(amount) as result from payments
select min(amount) as result from payments
select avg(amount) as result from payments
select * from users limit 4
select * from users order by age
select * from users order by age desc

select count(*),pname from users group by pname
select count(*),pname,phone from users group by pname,phone
select count(*),age from users group by age having count(*)<=2

create view sampleview3 as select * from payments where amount between 400 and 700
select * from sampleview3
delete from sampleview3 where booking_id = 308
drop view sampleview3

select *,
   case
       when age>30 then "greater"
       when age between 21 and 29 then "equal"
       else "under"
end from users       

select * from users,buses,boardingpoint,schedules,bookings,payments,feedback

SELECT b.booking_id,u.pname AS user_name,bs.bus_number,b.seat_no,s.departure_time
FROM bookings b
INNER JOIN users u ON b.user_id = u.user_id
INNER JOIN schedules s ON b.schedule_id = s.schedule_id
INNER JOIN buses bs ON s.bus_id = bs.bus_id;


show tables