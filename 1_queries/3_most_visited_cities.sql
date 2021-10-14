SELECT PROPERTIES.city as city, count(reservations)
FROM reservations 
JOIN properties ON property_id = properties.id
GROUP BY properties.city;