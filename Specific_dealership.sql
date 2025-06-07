SELECT *
FROM cardealership.dealerships
JOIN cardealership.inventory ON dealerships.dealership_id = inventory.dealership_id
JOIN cardealership.vehicles ON inventory.VIN = vehicles.VIN
Where dealerships.dealership_id = 1;