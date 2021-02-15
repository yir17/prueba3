SELECT clients_name FROM clients
LEFT JOIN bills ON clients.id = bills.clients_id
WHERE clients_id IN 
(
    SELECT clients_id FROM bills
    WHERE total_price > 100
)
GROUP BY clients_name;