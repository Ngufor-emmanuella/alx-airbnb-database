# Performance Monitoring and Refinement

## Introduction
This document outlines the steps taken to monitor and refine the performance of our database using SQL commands like `EXPLAIN ANALYZE` and `SHOW PROFILE`. The focus is on identifying bottlenecks, suggesting schema adjustments, and reporting the observed improvements.

## Step 1: Monitor Query Performance

### 1.1 Using EXPLAIN ANALYZE
We first executed the `EXPLAIN ANALYZE` command on a few frequently used queries to identify performance bottlenecks.

#### Example Query 1: Fetching Bookings for a User

EXPLAIN ANALYZE 
SELECT * FROM bookings 
WHERE user_id = 1 AND start_date BETWEEN '2023-01-01' AND '2023-12-31';

#### Fetching Properties with Reviews
SHOW PROFILES;

SHOW PROFILE FOR QUERY N;
