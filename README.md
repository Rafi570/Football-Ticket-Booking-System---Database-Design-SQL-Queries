# Football Ticket Booking System

This project is a database design and implementation for a Football Ticket Booking System. It includes the database schema (ERD), SQL setup scripts, and query implementations.

## Features
- **User Management**: Track football fans and ticket managers.
- **Match Management**: Manage match fixtures, tournament categories, and ticket availability.
- **Booking System**: Handle ticket reservations with support for payments and seat assignments.

## Database Schema (ERD)
The system is designed with a relational structure:
- **Users (1)** <--> **Bookings (N)**: One user can make many bookings.
- **Matches (1)** <--> **Bookings (N)**: One match can have many bookings.

## SQL Implementation
The system uses PostgreSQL for storing data. Key components include:
- `Users` table for storing fan/manager details.
- `Matches` table for fixture information.
- `Bookings` table acting as a relational bridge between users and matches.

## How to Run
1. Ensure you have PostgreSQL installed and running.
2. Open your SQL client (e.g., Beekeeper Studio).
3. Execute the `schema.sql` script to create the tables.
4. Execute the `data.sql` script to seed the initial data.
5. Run the provided SQL queries in `query.sql` to generate reports.

## License
This project is for educational purposes.