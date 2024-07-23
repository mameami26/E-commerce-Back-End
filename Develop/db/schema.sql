-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

-- Switch to the new database
\c ecommerce_db

-- CREATE TABLE Category
CREATE TABLE Category (
    id SERIAL PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);

-- CREATE TABLE Product
CREATE TABLE Product (
    id SERIAL PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    price DECIMAL NOT NULL,
    stock INTEGER DEFAULT 10 NOT NULL,
    category_id INTEGER REFERENCES Category(id)
);

-- CREATE TABLE Tag
CREATE TABLE Tag (
    id SERIAL PRIMARY KEY,
    tag_name VARCHAR(255)
);

-- CREATE TABLE ProductTag
CREATE TABLE ProductTag (
    id SERIAL PRIMARY KEY,
    product_id INTEGER REFERENCES Product(id),
    tag_id INTEGER REFERENCES Tag(id)
);
