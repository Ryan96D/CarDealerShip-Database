SELECT Distinct dealerships.* FROM cardealership.dealerships
JOIN cardealership.inventory ON dealerships.dealership_id = inventory.dealership_id
JOIN cardealership.vehicles ON inventory.VIN = vehicles.VIN
WHERE Makemodel LIKE "BMW%";