-- Insert sample Users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at) VALUES
('550e8400-e29b-41d4-a716-446655440000', 'Alice', 'Johnson', 'alice.johnson@example.com', 'hash1', '555-1234', 'guest', CURRENT_TIMESTAMP),
('550e8400-e29b-41d4-a716-446655440003', 'David', 'Brown', 'david.brown@example.com', 'hash4', '555-9876', 'host', CURRENT_TIMESTAMP),
('550e8400-e29b-41d4-a716-446655440004', 'Eva', 'Green', 'eva.green@example.com', 'hash5', '555-4321', 'admin', CURRENT_TIMESTAMP);

-- Insert sample Properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at) VALUES
('660e8400-e29b-41d4-a716-446655441000', '550e8400-e29b-41d4-a716-446655440002', 'Seaside Villa', 'Beautiful villa by the sea with pool and garden', 'Miami, FL', 350.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('660e8400-e29b-41d4-a716-446655441002', '550e8400-e29b-41d4-a716-446655440003', 'Downtown Apartment', 'Modern apartment in the city center', 'New York, NY', 180.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Insert sample Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at) VALUES
('770e8400-e29b-41d4-a716-446655442000', '660e8400-e29b-41d4-a716-446655441000', '550e8400-e29b-41d4-a716-446655440000', '2025-11-01', '2025-11-07', 2450.00, 'confirmed', CURRENT_TIMESTAMP),
('770e8400-e29b-41d4-a716-446655442002', '660e8400-e29b-41d4-a716-446655441002', '550e8400-e29b-41d4-a716-446655440000', '2025-12-01', '2025-12-05', 720.00, 'canceled', CURRENT_TIMESTAMP);

-- Insert sample Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method) VALUES
('880e8400-e29b-41d4-a716-446655443000', '770e8400-e29b-41d4-a716-446655442000', 2450.00, CURRENT_TIMESTAMP, 'credit_card'),
('880e8400-e29b-41d4-a716-446655443001', '770e8400-e29b-41d4-a716-446655442001', 1000.00, CURRENT_TIMESTAMP, 'paypal');

-- Insert sample Reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at) VALUES
('990e8400-e29b-41d4-a716-446655444000', '660e8400-e29b-41d4-a716-446655441000', '550e8400-e29b-41d4-a716-446655440000', 5, 'Amazing stay, very clean and beautiful views!', CURRENT_TIMESTAMP),
('990e8400-e29b-41d4-a716-446655444001', '660e8400-e29b-41d4-a716-446655441001', '550e8400-e29b-41d4-a716-446655440001', 4, 'Cozy cabin, a bit cold but great location.', CURRENT_TIMESTAMP);

-- Insert sample Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at) VALUES
('a10e8400-e29b-41d4-a716-446655445000', '550e8400-e29b-41d4-a716-446655440000', '550e8400-e29b-41d4-a716-446655440002', 'Hi Carol, I am interested in booking your villa for November.', CURRENT_TIMESTAMP),
('a10e8400-e29b-41d4-a716-446655445001', '550e8400-e29b-41d4-a716-446655440002', '550e8400-e29b-41d4-a716-446655440000', 'Hi Alice, the villa is available in November. Let me know your dates.', CURRENT_TIMESTAMP);
