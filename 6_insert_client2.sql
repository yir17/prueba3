INSERT INTO bills(clients_id)
VALUES (2);

INSERT INTO products_list(product_id, bill_id, quantity, total_price)
VALUES (2, 3, 4, ((SELECT unit_value FROM products WHERE id=2) * 4));

INSERT INTO products_list(product_id, bill_id, quantity, total_price)
VALUES (7, 3, 1, ((SELECT unit_value FROM products WHERE id=7) * 1));

INSERT INTO products_list(product_id, bill_id, quantity, total_price)
VALUES (3, 3, 8, ((SELECT unit_value FROM products WHERE id=3) * 8));

UPDATE bills SET iva = 0.13 * (SELECT SUM(total_price) 
FROM products_list WHERE bill_id = 3),
subtotal = (SELECT SUM(total_price) FROM products_list WHERE bill_id = 3),
total_price = (0.13 * (SELECT SUM(total_price) FROM products_list WHERE bill_id =3)) + (SELECT SUM(total_price) FROM products_list WHERE bill_id = 3)
WHERE id_bills = 3;

INSERT INTO bills(clients_id)
VALUES (2); --id del comprador

INSERT INTO products_list(product_id, bill_id, quantity, total_price)
VALUES (5, 4, 5, ((SELECT unit_value FROM products WHERE id=5) * 5));

--VALUES (id_procto, id-factura, cantidad, ((SELECT unit_value FROM products WHERE id=id_producto) * cantidad 3));

INSERT INTO products_list(product_id, bill_id, quantity, total_price)
VALUES (1, 4 , 2, ((SELECT unit_value FROM products WHERE id=1) * 2));


UPDATE bills SET iva = 0.13 * (SELECT SUM(total_price) 
FROM products_list WHERE bill_id = 4),
subtotal = (SELECT SUM(total_price) FROM products_list WHERE bill_id = 4),
total_price = (0.13 * (SELECT SUM(total_price) FROM products_list WHERE bill_id = 4)) + (SELECT SUM(total_price) FROM products_list WHERE bill_id = 4)
WHERE id_bills = 4;


INSERT INTO bills(clients_id)
VALUES (2);

INSERT INTO products_list(product_id, bill_id, quantity, total_price)
VALUES (4, 5, 2, ((SELECT unit_value FROM products WHERE id=4) * 2));

INSERT INTO products_list(product_id, bill_id, quantity, total_price)
VALUES (3, 5, 4, ((SELECT unit_value FROM products WHERE id=3) * 4));

INSERT INTO products_list(product_id, bill_id, quantity, total_price)
VALUES (4, 5, 2, ((SELECT unit_value FROM products WHERE id=4) * 2));

UPDATE bills SET iva = 0.13 * (SELECT SUM(total_price) 
FROM products_list WHERE bill_id = 5),
subtotal = (SELECT SUM(total_price) FROM products_list WHERE bill_id = 5),
total_price = (0.13 * (SELECT SUM(total_price) FROM products_list WHERE bill_id =5)) + (SELECT SUM(total_price) FROM products_list WHERE bill_id = 5)
WHERE id_bills = 5;