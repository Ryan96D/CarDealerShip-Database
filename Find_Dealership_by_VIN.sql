SELECT * FROM cardealership.dealerships
JOIN cardealership.inventory ON dealerships.dealership_id = inventory.dealership_id
Where cardealership.inventory.VIN = '000000G00SE000001';