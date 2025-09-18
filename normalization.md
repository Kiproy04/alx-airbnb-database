# Normalization Steps (to 3NF)

## Step 1: First Normal Form (1NF)
- All tables have atomic attributes.
- No repeating groups or multi-valued fields.
✅ Schema satisfies 1NF.

## Step 2: Second Normal Form (2NF)
- All tables use a single-column primary key (UUID).
- No partial dependencies exist.
✅ Schema satisfies 2NF.

## Step 3: Third Normal Form (3NF)
- Checked for transitive dependencies.
- Example: In `User`, email, name, and role depend only on `user_id`.
- In `Booking`, start_date, end_date, total_price depend only on `booking_id`.
- In `Payment`, amount and method depend only on `payment_id`.
- In `Review`, rating and comment depend only on `review_id`.
- In `Message`, body and timestamp depend only on `message_id`.

## Adjustment Considered
- The `Property.location` attribute is currently a simple VARCHAR.
- To reduce redundancy and improve scalability, we could normalize this into an `Address` table.
- Proposed `Address` table:
  - address_id (PK)
  - street, city, state, country, postal_code
- Then `Property` would reference `Address` via `address_id`.
