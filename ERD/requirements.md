# Relationship and Description

User: Key entity representing all users including guests, hosts, and admins. The primary key is user_id. The email field is unique. Users have roles which determine their privileges.

Property: Each property is owned by a host (host_id foreign key referencing User.user_id). Hosts can own multiple properties. Property has details such as name, description, location, and nightly price.

Booking: Represents reservations made by users (user_id) for properties (property_id). A booking has start and end dates, total price, and status (pending, confirmed, canceled).

Payment: Linked one-to-one to a booking (booking_id), records payment amount, date, and method. Each booking has one payment record.

Review: Users can leave reviews for properties they have booked. Reviews include rating between 1-5 and comments.

Message: Represents messages between users, with sender_id and recipient_id both referencing the User table for communication.

## In Summary ...
User → Property1:N One host can list many properties
User → Booking1:N One guest can make many bookings
Property → Booking1:N A property can have multiple bookings
Booking → Payment1:N A booking can have multiple payments
Property → Review1:N A property can have multiple reviews
User → Review1:N A user can write multiple reviews
User → Message sender/receiver 1:N (Self-relationship: users can message each other)
