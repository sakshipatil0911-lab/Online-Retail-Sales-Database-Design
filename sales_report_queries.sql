USE OnlineRetailDB;

-- total sales revenue --
SELECT SUM(amount) AS Total_Sales
FROM Payments;

-- total orders --
SELECT COUNT(*) AS Total_Orders
FROM Orders;

-- top selling products --
SELECT
    p.product_name,
    SUM(oi.quantity) AS Total_Sold
FROM Products p
JOIN Order_Items oi
ON p.product_id = oi.product_id
GROUP BY p.product_name
ORDER BY Total_Sold DESC;

-- Revenue by Payment Method --
SELECT
    payment_method,
    SUM(amount) AS Total_Revenue
FROM Payments
GROUP BY payment_method;

-- customerwise total orders --
SELECT
    c.customer_name,
    COUNT(o.order_id) AS Total_Orders
FROM Customers c
LEFT JOIN Orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY Total_Orders DESC;


-- order by status --
SELECT
    status,
    COUNT(*) AS Total_Orders
FROM Orders
GROUP BY status;

-- categorywise product count --
SELECT
    cat.category_name,
    COUNT(p.product_id) AS Total_Products
FROM Categories cat
LEFT JOIN Products p
ON cat.category_id = p.category_id
GROUP BY cat.category_name;


-- low stock product --
SELECT
    product_name,
    stock
FROM Products
WHERE stock < 10;

-- monthly sales report --
SELECT
    MONTH(payment_date) AS Month,
    SUM(amount) AS Total_Sales
FROM Payments
GROUP BY MONTH(payment_date)
ORDER BY Month;

-- Top 5 Highest Revenue Orders --
SELECT
    order_id,
    amount
FROM Payments
ORDER BY amount DESC
LIMIT 5;

-- Average Order Value --
SELECT
    ROUND(AVG(amount), 2) AS Average_Order_Value
FROM Payments;

-- Customers Without Orders --
SELECT
    c.customer_name
FROM Customers c
LEFT JOIN Orders o
ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- Revenue by Category --
SELECT
    cat.category_name,
    SUM(pay.amount) AS Total_Revenue
FROM Categories cat
JOIN Products p
ON cat.category_id = p.category_id
JOIN Order_Items oi
ON p.product_id = oi.product_id
JOIN Orders o
ON oi.order_id = o.order_id
JOIN Payments pay
ON o.order_id = pay.order_id
GROUP BY cat.category_name
ORDER BY Total_Revenue DESC;

-- Most Expensive Product --
SELECT
    product_name,
    price
FROM Products
ORDER BY price DESC
LIMIT 1;

-- Customers Who Spent the Most --
SELECT
    c.customer_name,
    SUM(pay.amount) AS Total_Spent
FROM Customers c
JOIN Orders o
ON c.customer_id = o.customer_id
JOIN Payments pay
ON o.order_id = pay.order_id
GROUP BY c.customer_name
ORDER BY Total_Spent DESC;