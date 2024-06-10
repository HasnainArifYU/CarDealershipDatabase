SELECT d.dealership_name, d.address, d.phone
FROM Dealerships d
JOIN Inventory i ON d.dealership_id = i.dealership_id
WHERE i.VIN = '1HGCM82633A123456';