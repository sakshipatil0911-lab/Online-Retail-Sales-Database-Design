CREATE DATABASE OnlineRetailDB;
USE OnlineRetailDB;


-- create customer table --
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    city VARCHAR(50)
);

-- create category --
CREATE TABLE Categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL UNIQUE
);

-- create product table --
CREATE TABLE Products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock INT DEFAULT 0,
    category_id INT,
    FOREIGN KEY (category_id)
    REFERENCES Categories(category_id)
);

-- create order table--
CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    status VARCHAR(20),
    FOREIGN KEY (customer_id)
    REFERENCES Customers(customer_id)
);

-- order item table --
CREATE TABLE Order_Items (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT NOT NULL,
    FOREIGN KEY (order_id)
    REFERENCES Orders(order_id),
    FOREIGN KEY (product_id)
    REFERENCES Products(product_id)
);


-- create payment table--
CREATE TABLE Payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT UNIQUE,
    payment_method VARCHAR(50),
    amount DECIMAL(10,2),
    payment_date DATE,
    FOREIGN KEY (order_id)
    REFERENCES Orders(order_id)
);

