USE OnlineRetailDB;

INSERT INTO Categories (category_name)
VALUES
('Electronics'),
('Clothing'),
('Books'),
('Home Appliances'),
('Footwear'),
('Beauty Products'),
('Groceries'),
('Sports Equipment'),
('Furniture'),
('Toys');

SELECT * FROM Categories;

INSERT INTO Customers (customer_name, email, phone, city)
VALUES
('Sakshi Patil','sakshi@gmail.com','9876543210','Mumbai'),
('Rohan Sharma','rohan@gmail.com','8765432109','Delhi'),
('Priya Singh','priya@gmail.com','7654321098','Pune'),
('Aman Verma','aman@gmail.com','6543210987','Bangalore'),
('Neha Gupta','neha@gmail.com','5432109876','Hyderabad'),
('Rahul Mehta','rahul@gmail.com','9123456780','Ahmedabad'),
('Sneha Joshi','sneha@gmail.com','9234567891','Nagpur'),
('Karan Kapoor','karan@gmail.com','9345678912','Chennai'),
('Pooja Desai','pooja@gmail.com','9456789123','Surat'),
('Arjun Nair','arjun@gmail.com','9567891234','Kochi'),
('Meera Shah','meera@gmail.com','9678912345','Jaipur'),
('Vikas Yadav','vikas@gmail.com','9789123456','Lucknow'),
('Anjali Rao','anjali@gmail.com','9891234567','Mysore'),
('Deepak Kumar','deepak@gmail.com','9902345678','Patna'),
('Ritika Jain','ritika@gmail.com','9013456789','Indore'),
('Mohit Agarwal','mohit@gmail.com','9124567890','Noida'),
('Nisha Verma','nisha@gmail.com','9235678901','Bhopal'),
('Saurabh Mishra','saurabh@gmail.com','9346789012','Kanpur'),
('Divya Iyer','divya@gmail.com','9457890123','Coimbatore'),
('Akash Singh','akash@gmail.com','9568901234','Nashik');

SELECT * FROM Customers;


INSERT INTO Products (product_name, price, stock, category_id)
VALUES
('Laptop',55000,10,1),
('Smartphone',30000,15,1),
('Bluetooth Speaker',2500,30,1),
('Headphones',1800,40,1),
('T-Shirt',800,50,2),
('Jeans',1500,25,2),
('Novel Book',500,40,3),
('Python Programming Book',900,20,3),
('Microwave Oven',7000,8,4),
('Refrigerator',25000,5,4),
('Sports Shoes',3500,20,5),
('Sandals',1200,35,5),
('Face Wash',250,60,6),
('Shampoo',450,50,6),
('Rice Bag',1200,40,7),
('Cooking Oil',1800,25,7),
('Cricket Bat',2200,15,8),
('Football',900,20,8),
('Office Chair',4500,12,9),
('Toy Car',600,30,10);

SELECT * FROM Products;


INSERT INTO Orders (customer_id, order_date, status)
VALUES
(1, '2026-06-01', 'Delivered'),
(2, '2026-06-02', 'Shipped'),
(3, '2026-06-03', 'Pending'),
(4, '2026-06-04', 'Delivered'),
(5, '2026-06-05', 'Cancelled'),
(1, '2026-06-06', 'Delivered'),
(6, '2026-06-07', 'Shipped'),
(7, '2026-06-08', 'Pending'),
(8, '2026-06-09', 'Delivered'),
(9, '2026-06-10', 'Delivered');

select * from Orders;

INSERT INTO Order_Items (order_id, product_id, quantity)
VALUES
(1, 1, 1),
(1, 5, 2),
(2, 2, 1),
(3, 10, 1),
(4, 3, 2),
(5, 8, 1),
(6, 15, 3),
(7, 6, 2),
(8, 12, 1),
(9, 20, 2),
(10, 4, 1);

select * from Order_Items;

INSERT INTO Payments (order_id, payment_method, amount, payment_date)
VALUES
(1, 'Credit Card', 56600.00, '2026-06-01'),
(2, 'UPI', 30000.00, '2026-06-02'),
(3, 'Debit Card', 25000.00, '2026-06-03'),
(4, 'Net Banking', 3600.00, '2026-06-04'),
(5, 'Cash', 900.00, '2026-06-05'),
(6, 'UPI', 5400.00, '2026-06-06'),
(7, 'Credit Card', 4200.00, '2026-06-07'),
(8, 'Debit Card', 1200.00, '2026-06-08'),
(9, 'UPI', 1800.00, '2026-06-09'),
(10, 'Cash', 2500.00, '2026-06-10');

select * from Payments;