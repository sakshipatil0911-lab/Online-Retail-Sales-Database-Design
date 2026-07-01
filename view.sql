USE OnlineRetailDB;

-- Customer Orders View --
CREATE VIEW Customer_Orders_View AS
SELECT
    c.customer_id,
    c.customer_name,
    o.order_id,
    o.order_date,
    o.status
FROM Customers c
INNER JOIN Orders o
ON c.customer_id = o.customer_id;

SELECT * FROM Customer_Orders_View;

-- Product Sales View --
CREATE VIEW Product_Sales_View AS
SELECT
    p.product_id,
    p.product_name,
    SUM(oi.quantity) AS Total_Quantity_Sold
FROM Products p
INNER JOIN Order_Items oi
ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name;

SELECT * FROM Product_Sales_View;

-- Payment Details View --
CREATE VIEW Payment_Details_View AS
SELECT
    c.customer_name,
    pay.payment_method,
    pay.amount,
    pay.payment_date
FROM Customers c
INNER JOIN Orders o
ON c.customer_id = o.customer_id
INNER JOIN Payments pay
ON o.order_id = pay.order_id;

select* from Payment_Details_View;

-- Category Products View --
CREATE VIEW Category_Products_View AS
SELECT
    cat.category_name,
    p.product_name,
    p.price,
    p.stock
FROM Categories cat
INNER JOIN Products p
ON cat.category_id = p.category_id;

SELECT * FROM Category_Products_View;

-- Delivered Orders View --
CREATE VIEW Delivered_Orders_View AS
SELECT *
FROM Orders
WHERE status = 'Delivered';

SELECT * FROM Delivered_Orders_View;

SHOW FULL TABLES
WHERE Table_type = 'VIEW';
