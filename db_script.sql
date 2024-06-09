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
    Sold BOOLEAN NOT NULL
    );
    
CREATE TABLE Inventory (
	FOREIGN KEY (dealership_id) REFERENCES Dealerships(dealership_id),
    	FOREIGN KEY (VIN) REFERENCES Vehicles(VIN)
        );
        
CREATE TABLE Sales_Contracts (
	sale_id INT AUTO_INCREMENT PRIMARY KEY,
    FOREIGN KEY (VIN) REFERENCES Vehicles(VIN)
    );
    
    


    
    
    
    





