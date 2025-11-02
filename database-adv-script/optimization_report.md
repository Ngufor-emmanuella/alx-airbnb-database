SELECT 
    b.id AS BookingID,
    u.id AS UserID,
    u.name AS UserName,
    p.id AS PropertyID,
    p.name AS PropertyName,
    pm.amount AS PaymentAmount
FROM 
    bookings b
JOIN 
    users u ON b.user_id = u.id
JOIN 
    properties p ON b.property_id = p.id
LEFT JOIN 
    payments pm ON b.id = pm.booking_id;  -- Use LEFT JOIN if payments are optional