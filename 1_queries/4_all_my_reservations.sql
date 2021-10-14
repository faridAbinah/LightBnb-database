SELECT reservations.*, properties.*, avg(property_reviews.rating) as average_rating
FROM reservations 
JOIN proerties  ON property_id = properties.id
JOIN property_reviews properties.id = property_reviews.id
WHERE reservations.guest_id = 1
AND reservations.end_Date < now()::date
GROUP BY properties.id,reservations.id 
ORDER BY reservations.start_date
LIMIT 10;