INSERT INTO bills(clients_id)
VALUES (1); --id del comprador

INSERT INTO products_list(product_id, bill_id, quantity, total_price)
VALUES (1, 1, 1, ((SELECT unit_value FROM products WHERE id=1) * 1));

--VALUES (id_procto, id-factura, cantidad, ((SELECT unit_value FROM products WHERE id=id_producto) * cantidad 3));

INSERT INTO products_list(product_id, bill_id, quantity, total_price)
VALUES (4, 1, 1, ((SELECT unit_value FROM products WHERE id=4) * 1));


UPDATE bills SET iva = 0.13 * (SELECT SUM(total_price) 
FROM products_list WHERE bill_id = 1),
subtotal = (SELECT SUM(total_price) FROM products_list WHERE bill_id = 1),
total_price = (0.13 * (SELECT SUM(total_price) FROM products_list WHERE bill_id = 1)) + (SELECT SUM(total_price) FROM products_list WHERE bill_id = 1)
WHERE id_bills = 1;


INSERT INTO bills(clients_id)
VALUES (1);

INSERT INTO products_list(product_id, bill_id, quantity, total_price)
VALUES (8, 2, 10, ((SELECT unit_value FROM products WHERE id=8) * 10));

INSERT INTO products_list(product_id, bill_id, quantity, total_price)
VALUES (5, 2, 4, ((SELECT unit_value FROM products WHERE id=5) * 4));

INSERT INTO products_list(product_id, bill_id, quantity, total_price)
VALUES (3, 2, 10, ((SELECT unit_value FROM products WHERE id=3) * 10));

UPDATE bills SET iva = 0.13 * (SELECT SUM(total_price) 
FROM products_list WHERE bill_id = 2),
subtotal = (SELECT SUM(total_price) FROM products_list WHERE bill_id = 2),
total_price = (0.13 * (SELECT SUM(total_price) FROM products_list WHERE bill_id =2)) + (SELECT SUM(total_price) FROM products_list WHERE bill_id = 2)
WHERE id_bills = 2;