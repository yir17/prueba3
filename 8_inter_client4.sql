INSERT INTO bills(clients_id)
VALUES (4);

INSERT INTO products_list(product_id, bill_id, quantity, total_price)
VALUES (5, 7, 3, ((SELECT unit_value FROM products WHERE id=5) * 3));

INSERT INTO products_list(product_id, bill_id, quantity, total_price)
VALUES (8, 7, 25, ((SELECT unit_value FROM products WHERE id=8) * 25));

UPDATE bills SET iva = 0.13 * (SELECT SUM(total_price) 
FROM products_list WHERE bill_id = 7),
subtotal = (SELECT SUM(total_price) FROM products_list WHERE bill_id = 7),
total_price = (0.13 * (SELECT SUM(total_price) FROM products_list WHERE bill_id =7)) + (SELECT SUM(total_price) FROM products_list WHERE bill_id = 7)
WHERE id_bills = 7;

INSERT INTO bills(clients_id)
VALUES (4);

INSERT INTO products_list(product_id, bill_id, quantity, total_price)
VALUES (3, 8, 14, ((SELECT unit_value FROM products WHERE id=3) * 14));

INSERT INTO products_list(product_id, bill_id, quantity, total_price)
VALUES (3, 8, 7, ((SELECT unit_value FROM products WHERE id=3) * 7));

INSERT INTO products_list(product_id, bill_id, quantity, total_price)
VALUES (2, 8, 10, ((SELECT unit_value FROM products WHERE id=2) * 10));

UPDATE bills SET iva = 0.13 * (SELECT SUM(total_price) 
FROM products_list WHERE bill_id = 8),
subtotal = (SELECT SUM(total_price) FROM products_list WHERE bill_id = 8),
total_price = (0.13 * (SELECT SUM(total_price) FROM products_list WHERE bill_id =8)) + (SELECT SUM(total_price) FROM products_list WHERE bill_id = 8)
WHERE id_bills = 8;

INSERT INTO bills(clients_id)
VALUES (4);

INSERT INTO products_list(product_id, bill_id, quantity, total_price)
VALUES (6, 9, 6, ((SELECT unit_value FROM products WHERE id=6) * 6));

INSERT INTO products_list(product_id, bill_id, quantity, total_price)
VALUES (1, 9, 2, ((SELECT unit_value FROM products WHERE id=1) * 2));

INSERT INTO products_list(product_id, bill_id, quantity, total_price)
VALUES (5, 9, 3, ((SELECT unit_value FROM products WHERE id=5) * 3));

INSERT INTO products_list(product_id, bill_id, quantity, total_price)
VALUES (4, 9, 3, ((SELECT unit_value FROM products WHERE id=4) * 3));

UPDATE bills SET iva = 0.13 * (SELECT SUM(total_price) 
FROM products_list WHERE bill_id = 9),
subtotal = (SELECT SUM(total_price) FROM products_list WHERE bill_id = 9),
total_price = (0.13 * (SELECT SUM(total_price) FROM products_list WHERE bill_id =9)) + (SELECT SUM(total_price) FROM products_list WHERE bill_id = 9)
WHERE id_bills = 9;

INSERT INTO bills(clients_id)
VALUES (4);

INSERT INTO products_list(product_id, bill_id, quantity, total_price)
VALUES (1, 10, 1, ((SELECT unit_value FROM products WHERE id=1) * 1));

UPDATE bills SET iva = 0.13 * (SELECT SUM(total_price) 
FROM products_list WHERE bill_id = 10),
subtotal = (SELECT SUM(total_price) FROM products_list WHERE bill_id = 10),
total_price = (0.13 * (SELECT SUM(total_price) FROM products_list WHERE bill_id =10)) + (SELECT SUM(total_price) FROM products_list WHERE bill_id = 10)
WHERE id_bills = 10;
