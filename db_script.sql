DROP DATABASE IF EXISTS DealershipDatabase;

CREATE DATABASE DealershipDatabase;

USE DealershipDatabase;

CREATE TABLE Dealerships (
    dealership_id INT AUTO_INCREMENT PRIMARY KEY,
    dealership_name VARCHAR(50),
    address VARCHAR(50),
    phone VARCHAR(12)
	);

CREATE TABLE Vehicles (
    vehicle_id INT AUTO_INCREMENT PRIMARY KEY,
    make VARCHAR(15) NOT NULL,
    model VARCHAR(20) NOT NULL,
    production_year INT NOT NULL,
    color VARCHAR(10) NOT NULL,
    VIN CHAR(17) NOT NULL UNIQUE,
    sold BOOLEAN NOT NULL
);

CREATE TABLE Inventory (
    inventory_id INT AUTO_INCREMENT PRIMARY KEY,
    dealership_id INT,
    VIN CHAR(17),
    FOREIGN KEY (dealership_id) REFERENCES Dealerships(dealership_id),
    FOREIGN KEY (VIN) REFERENCES Vehicles(VIN)
	);

CREATE TABLE Sales_Contracts (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    VIN CHAR(17),
    price FLOAT,
    dateOfSale DATE,
    FOREIGN KEY (VIN) REFERENCES Vehicles(VIN)
);

-- Populate tables

INSERT INTO Dealerships (dealership_name, address, phone)

VALUES ('Alpha Motors', '123 Main St', '555-1234'),
       ('Irish Autos', '456 Oak Dr', '555-5678'),
       ('Pittsburgh Cars', '789 River Rd', '555-9012');


INSERT INTO Vehicles (make, model, production_year, color, VIN, sold)
VALUES ('Honda', 'Accord', 2003, 'Black', '1HGCM82633A123456', FALSE),
	('Honda', 'Civic', 2004, 'Blue', '2HGCM82633A654321', TRUE),
       ('Toyota', 'Camry', 2005, 'Red', '3HGCM82633A789012', FALSE),
       ('Ford', 'Focus', 2006, 'White', '4HGCM82633A345678', TRUE);


INSERT INTO Inventory (dealership_id, VIN)
VALUES (1, '1HGCM82633A123456'),
       (1, '2HGCM82633A654321'),
		(2, '3HGCM82633A789012'),
       (3, '4HGCM82633A345678');


INSERT INTO Sales_Contracts (VIN, price, dateOfSale)
VALUES ('2HGCM82633A654321', 20000.00, '2023-05-15'),
	('4HGCM82633A345678', 22000.00, '2023-06-01');
