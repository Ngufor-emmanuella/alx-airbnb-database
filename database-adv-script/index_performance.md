-- Creating indexes for high-usage columns

-- Create an index on the User table for the email column
CREATE INDEX idx_user_email ON users(email);

-- Create an index on the Booking table for the user_id column
CREATE INDEX idx_booking_user ON bookings(user_id);

-- Create an index on the Booking table for the property_id column
CREATE INDEX idx_booking_property ON bookings(property_id);

-- Create an index on the Property table for the location column
CREATE INDEX idx_property_location ON properties(location);

-- Create an index on the Property table for the price column
CREATE INDEX idx_property_price ON properties(price);

-- Measure query performance before adding indexes
-- This command allows you to see how the database engine plans to execute your query
EXPLAIN SELECT * FROM bookings WHERE user_id = 1;

-- Analyze the bookings table to gather statistics
ANALYZE bookings;

-- After running the above commands, run the EXPLAIN command again to see the impact of the indexes
-- Measure query performance after adding indexes
EXPLAIN SELECT * FROM bookings WHERE user_id = 1;