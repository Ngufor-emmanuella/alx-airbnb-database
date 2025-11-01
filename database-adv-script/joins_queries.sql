--Inner Joint - Retrieve all bookings and the respective users who made those bookings”--

SELECT 
    b.booking_id,
    b.property_id,
    b.start_date,
    b.end_date,
    b.total_price,
    b.status,
    u.user_id,
    u.first_name,
    u.last_name,
    u.email
FROM 
    Booking AS b
INNER JOIN 
    User AS u
ON 
    b.user_id = u.user_id;


--LEFT JOIN → “Retrieve all properties and their reviews, including properties that have no review

SELECT 
    p.property_id,
    p.name AS property_name,
    p.location,
    p.pricepernight,
    r.review_id,
    r.rating,
    r.comment,
    r.created_at AS review_date
FROM 
    Property AS p
LEFT JOIN 
    Review AS r
ON 
    p.property_id = r.property_id;

    --FULL OUTER JOIN → “Retrieve all users and all bookings, even if the user has no booking or a booking is not linked to a user
SELECT 
    u.user_id,
    u.first_name,
    u.last_name,
    u.email,
    b.booking_id,
    b.property_id,
    b.start_date,
    b.end_date,
    b.total_price,
    b.status
FROM 
    User AS u
FULL OUTER JOIN 
    Booking AS b
ON 
    u.user_id = b.user_id;

