SELECT clients_name FROM clients
WHERE id = (SELECT clients_id FROM bills
WHERE total_price = (SELECT MAX(total_price) FROM bills));