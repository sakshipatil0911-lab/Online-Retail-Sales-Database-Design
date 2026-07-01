USE OnlineRetailDB;

-- Display customer names and their orders --
SELECT
    c.customer_name,
    o.order_id,
    o.order_date,
    o.status
FROM Customers c
INNER JOIN Orders o
ON c.customer_id = o.customer_id;

-- Show all customers including those without orders --
SELECT
    c.customer_name,
    o.order_id,
    o.status
FROM Customers c
LEFT JOIN Orders o
ON c.customer_id = o.customer_id;

-- Show all orders with customer details --
SELECT
    c.customer_name,
    o.order_id,
    o.order_date
FROM Customers c
RIGHT JOIN Orders o
ON c.customer_id = o.customer_id;

-- Customer Order Report (Multi-table JOIN) --
SELECT
    c.customer_name,
    o.order_id,
    p.product_name,
    oi.quantity
FROM Customers c
INNER JOIN Orders o
ON c.customer_id = o.customer_id
INNER JOIN Order_Items oi
ON o.order_id = oi.order_id
INNER JOIN Products p
ON oi.product_id = p.product_id;


-- Payment Report --
SELECT
    o.order_id,
    c.customer_name,
    pay.payment_method,
    pay.amount
FROM Payments pay
INNER JOIN Orders o
ON pay.order_id = o.order_id
INNER JOIN Customers c
ON o.customer_id = c.customer_id;

-- Product Sales Report --
SELECT
    p.product_name,
    SUM(oi.quantity) AS Total_Quantity_Sold
FROM Products p
INNER JOIN Order_Items oi
ON p.product_id = oi.product_id
GROUP BY p.product_name;

-- Category-wise Product List --
SELECT
    cat.category_name,
    p.product_name,
    p.price
FROM Categories cat
INNER JOIN Products p
ON cat.category_id = p.category_id;

-- Customer and Payment Details --
SELECT
    c.customer_name,
    pay.payment_method,
    pay.amount
FROM Customers c
INNER JOIN Orders o
ON c.customer_id = o.customer_id
INNER JOIN Payments pay
ON o.order_id = pay.order_id;

-- Products Never Ordered --
SELECT
    p.product_name
FROM Products p
LEFT JOIN Order_Items oi
ON p.product_id = oi.product_id
WHERE oi.order_item_id IS NULL;

-- Customers Without Orders --
SELECT
    c.customer_name
FROM Customers c
LEFT JOIN Orders o
ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;