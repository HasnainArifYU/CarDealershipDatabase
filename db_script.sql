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
    VIN CHAR(17) NOT NULL,
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


    
    





