USE DealershipDatabase;

SELECT d.dealership_name, d.address, d.phone
FROM Dealerships d
JOIN Inventory i ON d.dealership_id = i.dealership_id
JOIN Vehicles v ON i.VIN = v.VIN
WHERE v.make = 'Honda' AND v.model = 'Civic' AND v.color = 'Blue';
