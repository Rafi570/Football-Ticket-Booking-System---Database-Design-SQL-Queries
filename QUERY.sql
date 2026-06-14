DROP TABLE IF EXISTS Bookings;
DROP TABLE IF EXISTS Matches;
DROP TABLE IF EXISTS Users;

CREATE TABLE Users (
    user_id INTEGER PRIMARY KEY,
    full_name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    role VARCHAR(50) CHECK (role IN ('Ticket Manager', 'Football Fan')),
    phone_number VARCHAR(20)
);

CREATE TABLE Matches (
    match_id INTEGER PRIMARY KEY,
    fixture VARCHAR(100),
    tournament_category VARCHAR(50),
    base_ticket_price DECIMAL(10,2) CHECK (base_ticket_price >= 0),
    match_status VARCHAR(20) CHECK (match_status IN ('Available', 'Selling Fast', 'Sold Out', 'Postponed'))
);

CREATE TABLE Bookings (
    booking_id INTEGER PRIMARY KEY,
    user_id INTEGER REFERENCES Users(user_id),
    match_id INTEGER REFERENCES Matches(match_id),
    seat_number VARCHAR(10),
    payment_status VARCHAR(20) CHECK (payment_status IN ('Pending', 'Confirmed', 'Cancelled', 'Refunded', NULL)),
    total_cost DECIMAL(10,2) CHECK (total_cost >= 0)
);
