USE OnlineRetailDB;

DELIMITER //

CREATE PROCEDURE GetCustomerOrders(IN p_customer_id INT)
BEGIN
    SELECT
        o.order_id,
        o.order_date,
        o.status
    FROM Orders o
    WHERE o.customer_id = p_customer_id;
END //

DELIMITER ;

CALL GetCustomerOrders(1);

DELIMITER //

CREATE PROCEDURE GetProductsByCategory(IN p_category_id INT)
BEGIN
    SELECT
        product_name,
        price,
        stock
    FROM Products
    WHERE category_id = p_category_id;
END //

DELIMITER ;

CALL GetProductsByCategory(1);

DELIMITER //

CREATE PROCEDURE AddCustomer(
    IN p_name VARCHAR(100),
    IN p_email VARCHAR(100),
    IN p_phone VARCHAR(15),
    IN p_city VARCHAR(50)
)
BEGIN
    INSERT INTO Customers
    (customer_name, email, phone, city)
    VALUES
    (p_name, p_email, p_phone, p_city);
END //

DELIMITER ;

CALL AddCustomer(
'Shruti Patil',
'shruti@gmail.com',
'9988776655',
'Pune'
);

SELECT * FROM Customers;

DELIMITER //

CREATE PROCEDURE GetTotalSales()
BEGIN
    SELECT
        SUM(amount) AS Total_Sales
    FROM Payments;
END //

DELIMITER ;

CALL GetTotalSales();

DELIMITER //

CREATE PROCEDURE GetExpensiveProducts(IN p_price DECIMAL(10,2))
BEGIN
    SELECT *
    FROM Products
    WHERE price > p_price;
END //

DELIMITER ;

CALL GetExpensiveProducts(5000);

SHOW PROCEDURE STATUS
WHERE Db='OnlineRetailDB';

DROP PROCEDURE GetCustomerOrders;