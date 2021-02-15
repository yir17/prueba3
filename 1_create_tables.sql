CREATE TABLE clients(
    id SERIAL PRIMARY KEY,
    clients_name VARCHAR(70),
    address VARCHAR(300),
    rut VARCHAR(70)
    );

CREATE TABLE categories(
    id SERIAL PRIMARY KEY,
    categories_name VARCHAR(60),
    description VARCHAR(300)
    );

CREATE TABLE products(
    id SERIAL PRIMARY KEY,
    products_name VARCHAR(60),
    description VARCHAR(300),
    unit_value INT,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES categories(id)
    );

CREATE TABLE bills(
    id_bills SERIAL PRIMARY KEY,
    clients_id INT,
    iva FLOAT,
    subtotal FLOAT,
    total_price FLOAT,
    date TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (clients_id) REFERENCES clients(id)
    );

CREATE TABLE products_list(
    id SERIAL PRIMARY KEY,
    product_id INT NOT NULL,
    bill_id INT,
    quantity INT,
    total_price FLOAT,
    FOREIGN KEY (product_id) REFERENCES products(id),
    FOREIGN KEY (bill_id) REFERENCES bills(id_bills)
    );