DELIMITER //

CREATE TRIGGER ReduceStock
AFTER INSERT ON Order_Items
FOR EACH ROW
BEGIN
    UPDATE Products
    SET stock = stock - NEW.quantity
    WHERE product_id = NEW.product_id;
END //

DELIMITER ;

SELECT product_id, product_name, stock
FROM Products
WHERE product_id = 1;

INSERT INTO Order_Items (order_id, product_id, quantity)
VALUES (2, 1, 2);

SELECT product_id, product_name, stock
FROM Products
WHERE product_id = 1;

DELIMITER //

CREATE TRIGGER CheckStock
BEFORE INSERT ON Order_Items
FOR EACH ROW
BEGIN
    DECLARE available_stock INT;

    SELECT stock
    INTO available_stock
    FROM Products
    WHERE product_id = NEW.product_id;

    IF available_stock < NEW.quantity THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Insufficient stock available.';
    END IF;
END //

DELIMITER ;

INSERT INTO Order_Items (order_id, product_id, quantity)
VALUES (3, 1, 100);

SHOW TRIGGERS;
