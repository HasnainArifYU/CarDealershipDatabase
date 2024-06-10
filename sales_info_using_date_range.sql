USE DealershipDatabase;

-- get sales information for a dealership for a specific date range;
SELECT sc.sale_id, v.make, v.model, v.color, v.VIN, sc.price, sc.dateOfSale, d.dealership_name, d.address, d.phone
FROM Sales_Contracts sc
JOIN Vehicles v ON sc.VIN = v.VIN
JOIN Inventory i ON v.VIN = i.VIN
JOIN Dealerships d ON i.dealership_id = d.dealership_id
WHERE d.dealership_id = 1
AND sc.dateOfSale BETWEEN '2023-01-01' AND '2023-12-31';
