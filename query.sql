SELECT client.last_name
FROM view
LEFT JOIN client ON client.id=view.client_id
JOIN apartment on apartment.id=view.apartment_id
WHERE apartment.rooms=3
GROUP BY client.id
HAVING COUNT(view.id)>=2;