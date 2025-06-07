SELECT 
	dealership_name,
    sales_contracts.VIN,
    sales_contracts.customer_name,
    sales_contracts.sale_date,
    sales_contracts.sale_price
    FROM sales_contracts
    JOIN inventory ON sales_contracts.VIN = inventory.VIN
    JOIN dealerships ON inventory.dealership_id = dealerships.dealership_id
    WHERE dealerships.dealership_id = 1
    AND sales_contracts.sale_date BETWEEN '2024-03-01' AND '2024-03-30';