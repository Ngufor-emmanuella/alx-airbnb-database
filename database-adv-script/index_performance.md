# creating indexes for the identified columns:

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


####  EXPLAIN command allows you to see how the database engine plans to execute your query, including whether it will use any indexes.

EXPLAIN SELECT * FROM bookings WHERE user_id = 1;

####  ANALYZE command can be used to gather statistics about the distribution of data in the table, which helps the query planner make better decisions.

ANALYZE bookings;

