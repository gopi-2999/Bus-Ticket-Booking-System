# Bus-Ticket-Booking-System
🚌 Bus Ticket Booking System – MySQL Project
📌 Project Overview

The Bus Ticket Booking System is a relational database project developed using MySQL to manage bus reservations efficiently.

This system allows users to book tickets, cancel reservations, manage passenger details, and track bus schedules using structured SQL queries and optimized database design.

The project demonstrates strong knowledge of database design, normalization, and real-world SQL operations.

🎯 Objectives

Design a structured relational database for bus ticket management

Implement booking and cancellation operations

Maintain passenger and bus records

Ensure data integrity using constraints

Optimize queries for better performance

🛠️ Technologies Used

MySQL

SQL

MySQL Workbench / phpMyAdmin

Git & GitHub

🗂️ Database Structure

The system consists of the following main tables:

Passengers – Stores passenger details

Buses – Stores bus information (route, timing, seats)

Bookings – Stores booking records

Payments – Manages payment details

🔗 Relationships

One Bus ➝ Many Bookings

One Passenger ➝ Many Bookings

Foreign Keys used to maintain referential integrity

🔎 Key SQL Features Implemented

✔️ Primary Key & Foreign Key Constraints

✔️ CRUD Operations (Create, Read, Update, Delete)

✔️ INNER JOIN for booking details

✔️ Aggregate Functions (COUNT, SUM)

✔️ GROUP BY & HAVING

✔️ Subqueries

✔️ Indexing for faster query performance

📊 Sample Query
-- View booking details with passenger and bus information
SELECT p.passenger_name, b.bus_name, bk.seat_number
FROM Bookings bk
INNER JOIN Passengers p ON bk.passenger_id = p.passenger_id
INNER JOIN Buses b ON bk.bus_id = b.bus_id;

📁 Project Structure
├── bus_ticket_booking.sql
├── ER_Diagram.png
├── sample_queries.sql
└── README.md

🚀 How to Run the Project

Install MySQL Server

Open MySQL Workbench

Import the bus_ticket_booking.sql file

Execute the script to create tables

Run sample queries to test functionality

📈 Learning Outcomes

Practical experience in relational database design

Understanding of normalization concepts

Writing complex SQL queries with joins

Implementing real-world booking logic

Managing structured data systems efficiently

🌟 Future Enhancements

Add user authentication system

Implement seat availability tracking in real-time

Integrate with front-end application

Add reporting dashboard
