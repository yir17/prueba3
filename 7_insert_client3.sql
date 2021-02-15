INSERT INTO bills(clients_id)
VALUES (3);

INSERT INTO products_list(product_id, bill_id, quantity, total_price)
VALUES (7, 6, 1, ((SELECT unit_value FROM products WHERE id=7) * 1));


UPDATE bills SET iva = 0.13 * (SELECT SUM(total_price) 
FROM products_list WHERE bill_id = 6),
subtotal = (SELECT SUM(total_price) FROM products_list WHERE bill_id = 6),
total_price = (0.13 * (SELECT SUM(total_price) FROM products_list WHERE bill_id =6)) + (SELECT SUM(total_price) FROM products_list WHERE bill_id = 6)
WHERE id_bills = 6;
