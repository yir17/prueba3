SELECT COUNT(saleaccount.clients_id) AS sale_product FROM(
    SELECT clients_id FROM bills
    WHERE id_bills IN
    (
        SELECT bill_id FROM products_list
        WHERE product_id = 6
    )
    GROUP BY clients_id
) AS saleaccount;