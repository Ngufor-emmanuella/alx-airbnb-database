SELECT 
    b.id AS BookingID,
    u.id AS UserID,
    u.name AS UserName,
    p.id AS PropertyID,
    p.name AS PropertyName,
    p.location AS PropertyLocation,
    pm.amount AS PaymentAmount,
    pm.payment_date AS PaymentDate
FROM 
    bookings b
JOIN 
    users u ON b.user_id = u.id
JOIN 
    properties p ON b.property_id = p.id
JOIN 
    payments pm ON b.id = pm.booking_id;

--Analyze Query Performance

EXPLAIN SELECT 
    b.id AS BookingID,
    u.id AS UserID,
    u.name AS UserName,
    p.id AS PropertyID,
    p.name AS PropertyName,
    pm.amount AS PaymentAmount,
    pm.payment_date AS PaymentDate
FROM 
    bookings b
JOIN 
    users u ON b.user_id = u.id
JOIN 
    properties p ON b.property_id = p.id
JOIN 
    payments pm ON b.id = pm.booking_id;


