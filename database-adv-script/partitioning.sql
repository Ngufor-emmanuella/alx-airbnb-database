-- Step 1: Create a new partitioned table
CREATE TABLE bookings_partitioned (
    id SERIAL PRIMARY KEY,
    user_id INT,
    property_id INT,
    start_date DATE,
    amount DECIMAL(10, 2),
    -- other columns...
)
PARTITION BY RANGE (start_date);

-- Step 2: Create partitions for specific date ranges
CREATE TABLE bookings_2023 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2023-01-01') TO ('2023-12-31');

CREATE TABLE bookings_2024 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2024-01-01') TO ('2024-12-31');

-- Add more partitions as needed for future years

-- Migrate Data to the Partitioned Table
INSERT INTO bookings_partitioned (id, user_id, property_id, start_date, amount)
SELECT id, user_id, property_id, start_date, amount FROM bookings;

--Example Query to Test Performance:
EXPLAIN ANALYZE 
SELECT * FROM bookings_partitioned 
WHERE start_date BETWEEN '2023-01-01' AND '2023-12-31';


