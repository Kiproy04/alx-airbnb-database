# Airbnb Database Schema - ALX Project

## Overview
This project defines the database schema for an Airbnb-like application.  
The schema is written in SQL and includes entities such as User, Property, Booking, Payment, Review, and Message.  
The design follows best practices for database normalization (up to 3NF) and ensures data integrity through constraints.

---

## Files
- **schema.sql** → SQL script to create all tables, primary keys, foreign keys, constraints, and indexes.
- **README.md** → Documentation explaining the schema.

---

## Entities
### User
- Stores user details (guest, host, admin).
- Constraints: `email` is unique.

### Property
- Represents a rental property owned by a host (User).
- Linked via `host_id`.

### Booking
- Represents reservations by users for properties.
- Includes start/end dates, total price, and status.

### Payment
- Tracks payments linked to bookings.
- Includes amount, method, and timestamp.

### Review
- Users can review properties after booking.
- Rating must be between 1 and 5.

### Message
- Direct messaging between users (sender → recipient).

---

## Relationships
- User → Property: One host owns many properties.
- User → Booking: One user can make many bookings.
- Property → Booking: One property can have many bookings.
- Booking → Payment: One booking can have many payments.
- User/Property → Review: A user can review a property.
- User → Message: Users can send/receive many messages.

---

## Indexes
- `User.email` → fast lookup.
- `Property.host_id` → optimize queries by host.
- `Booking.property_id` / `Booking.user_id` → optimize bookings queries.
- `Payment.booking_id` → optimize payments lookup.
- `Review.property_id`, `Review.user_id` → optimize review queries.
- `Message.sender_id`, `Message.recipient_id` → optimize messaging.