-- Insert Sample Data into Users Table
    INSERT INTO Users (user_id, first_name, last_name, email, password_hash, phone_number, role)
    VALUES
        (UUID(), 'Alice', 'Smith', 'alice@example.com', 'hashed_password_1', '123-456-7890', 'host'),
        (UUID(), 'Bob', 'Johnson', 'bob@example.com', 'hashed_password_2', '098-765-4321', 'guest'),
        (UUID(), 'Charlie', 'Williams', 'charlie@example.com', 'hashed_password_3', NULL, 'admin'),
        (UUID(), 'Diana', 'Brown', 'diana@example.com', 'hashed_password_4', '555-555-5555', 'guest'),
        (UUID(), 'Ethan', 'Jones', 'ethan@example.com', 'hashed_password_5', NULL, 'host');

    -- Insert Sample Data into Properties Table
    INSERT INTO Properties (property_id, host_id, name, description, location, price_per_night)
    VALUES
        (UUID(), (SELECT user_id FROM Users WHERE email = 'alice@example.com'), 'Cozy Cottage', 'A lovely cottage in the woods.', 'Forestville', 100.00),
        (UUID(), (SELECT user_id FROM Users WHERE email = 'alice@example.com'), 'Beach House', 'A stunning beach house with ocean views.', 'Ocean City', 250.00),
        (UUID(), (SELECT user_id FROM Users WHERE email = 'bob@example.com'), 'Downtown Apartment', 'An apartment located in downtown.', 'Metropolis', 150.00),
        (UUID(), (SELECT user_id FROM Users WHERE email = 'diana@example.com'), 'Mountain Retreat', 'A peaceful retreat in the mountains.', 'Highland', 200.00);

    -- Insert Sample Data into Bookings Table
    INSERT INTO Bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
    VALUES
        (UUID(), (SELECT property_id FROM Properties WHERE name = 'Cozy Cottage'), (SELECT user_id FROM Users WHERE email = 'bob@example.com'), '2025-11-01', '2025-11-05', 400.00, 'confirmed'),
        (UUID(), (SELECT property_id FROM Properties WHERE name = 'Beach House'), (SELECT user_id FROM Users WHERE email = 'diana@example.com'), '2025-11-10', '2025-11-15', 1250.00, 'pending'),
        (UUID(), (SELECT property_id FROM Properties WHERE name = 'Downtown Apartment'), (SELECT user_id FROM Users WHERE email = 'charlie@example.com'), '2025-11-20', '2025-11-22', 300.00, 'confirmed');

    -- Insert Sample Data into Payments Table
    INSERT INTO Payments (payment_id, booking_id, amount, payment_date, payment_method)
    VALUES
        (UUID(), (SELECT booking_id FROM Bookings WHERE status = 'confirmed' AND user_id = (SELECT user_id FROM Users WHERE email = 'bob@example.com')), 400.00, CURRENT_TIMESTAMP, 'credit_card'),
        (UUID(), (SELECT booking_id FROM Bookings WHERE status = 'pending' AND user_id = (SELECT user_id FROM Users WHERE email = 'diana@example.com')), 1250.00, CURRENT_TIMESTAMP, 'paypal');

    -- Insert Sample Data into Reviews Table
    INSERT INTO Reviews (review_id, property_id, user_id, rating, comment)
    VALUES
        (UUID(), (SELECT property_id FROM Properties WHERE name = 'Cozy Cottage'), (SELECT user_id FROM Users WHERE email = 'bob@example.com'), 5, 'Amazing stay! Highly recommend.'),
        (UUID(), (SELECT property_id FROM Properties WHERE name = 'Beach House'), (SELECT user_id FROM Users WHERE email = 'diana@example.com'), 4, 'Great location but needs some maintenance.');

    -- Insert Sample Data into Messages Table
    INSERT INTO Messages (message_id, sender_id, recipient_id, message_body)
    VALUES
        (UUID(), (SELECT user_id FROM Users WHERE email = 'bob@example.com'), (SELECT user_id FROM Users WHERE email = 'alice@example.com'), 'Is the cottage available for the weekend?'),
        (UUID(), (SELECT user_id FROM Users WHERE email = 'diana@example.com'), (SELECT user_id FROM Users WHERE email = 'alice@example.com'), 'Can I get an early check-in?');