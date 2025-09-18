-- ================================
-- Airbnb Database Seeding Script
-- Minimal sample data (2–3 rows/table)
-- ================================

-- 1. Insert Users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
  ('u1', 'Alice', 'Johnson', 'alice@example.com', 'hashed_pw1', '1234567890', 'guest'),
  ('u2', 'Bob', 'Smith', 'bob@example.com', 'hashed_pw2', '0987654321', 'host'),
  ('u3', 'Clara', 'White', 'clara@example.com', 'hashed_pw3', NULL, 'admin');

-- 2. Insert Properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
  ('p1', 'u2', 'Seaside Villa', 'A beautiful villa by the beach', 'Mombasa, Kenya', 120.00),
  ('p2', 'u2', 'City Apartment', 'Modern apartment in the city center', 'Nairobi, Kenya', 80.00);

-- 3. Insert Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
  ('b1', 'p1', 'u1', '2025-09-20', '2025-09-25', 600.00, 'confirmed'),
  ('b2', 'p2', 'u1', '2025-10-01', '2025-10-03', 160.00, 'pending');

-- 4. Insert Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
  ('pay1', 'b1', 600.00, 'credit_card'),
  ('pay2', 'b2', 160.00, 'paypal');

-- 5. Insert Reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
  ('r1', 'p1', 'u1', 5, 'Amazing villa! Would stay again.'),
  ('r2', 'p2', 'u1', 4, 'Great location but a bit noisy.');

-- 6. Insert Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
  ('m1', 'u1', 'u2', 'Hello, is the villa available in October?'),
  ('m2', 'u2', 'u1', 'Hi Alice, yes it is available!');