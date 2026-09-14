 
INSERT INTO Supplier (Supplier_ID, Purchase_ID, Name, Email, Address) VALUES
(1, 1, 'Highland Flour Mills', 'orders@highlandflour.co.ke', 'Nakuru, Kenya'),
(2, 2, 'Nairobi Sugar Traders', 'sales@nairobisugar.co.ke', 'Nairobi, Kenya'),
(3, 3, 'Dairy Fresh Kenya', 'orders@dairyfreshke.com', 'Kiambu, Kenya'),
(4, 4, 'FreshEgg Farms', 'contact@fresheggfarms.co.ke', 'Limuru, Kenya'),
(5, 5, 'Cacao Traders Kenya', 'info@cacaotraders.co.ke', 'Nairobi, Kenya'),
(6, 6, 'BakeYeast Supplies Ltd', 'sales@bakeyeast.co.ke', 'Nairobi, Kenya');
 
INSERT INTO Ingredient (Ingredient_ID, Purc_Item_ID, Name, Quantity) VALUES
(1, 1, 'All-Purpose Flour (kg)', 50),
(2, 2, 'Granulated Sugar (kg)', 30),
(3, 3, 'Unsalted Butter (kg)', 20),
(4, 4, 'Free-Range Eggs (pcs)', 200),
(5, 5, '70% Dark Chocolate (kg)', 15),
(6, 6, 'Active Dry Yeast (kg)', 5);
 
INSERT INTO Purchase_Items (Purc_Item_ID, Ingredient_ID, Purchase_ID, Quantity, Price) VALUES
(1, 1, 1, 50, 4500.00),
(2, 2, 2, 30, 2700.00),
(3, 3, 3, 20, 9000.00),
(4, 4, 4, 200, 3000.00),
(5, 5, 5, 15, 12000.00),
(6, 6, 6, 5, 1500.00);
 
INSERT INTO Purchases (Purchase_ID, Supplier_ID, Purc_Item_ID, P_Date) VALUES
(1, 1, 1, '2026-09-01 08:15:00'),
(2, 2, 2, '2026-09-01 08:30:00'),
(3, 3, 3, '2026-09-02 09:00:00'),
(4, 4, 4, '2026-09-02 09:20:00'),
(5, 5, 5, '2026-09-03 10:00:00'),
(6, 6, 6, '2026-09-03 10:15:00');
 
INSERT INTO Menu (Menu_Item_ID, Ingredient_ID, Name, Description, Price) VALUES
(1, 1, 'Sourdough Loaf', 'Crusty, naturally leavened sourdough bread', 350.00),
(2, 3, 'Butter Croissant', 'Flaky all-butter croissant', 180.00),
(3, 5, 'Chocolate Fudge Cake', 'Rich dark chocolate cake with fudge frosting (slice)', 450.00),
(4, 2, 'Red Velvet Cupcake', 'Cream-cheese-frosted red velvet cupcake', 220.00),
(5, 6, 'Cinnamon Roll', 'Soft roll swirled with cinnamon sugar and glaze', 200.00),
(6, 4, 'Custom Birthday Cake', 'Made-to-order celebration cake', 3500.00);
 
INSERT INTO Employees (Employee_ID, Order_ID, Name, Role) VALUES
(1, 1, 'Amina Yusuf', 'Baker'),
(2, 2, 'Brian Otieno', 'Cashier'),
(3, 3, 'Cynthia Wanjiru', 'Delivery Rider'),
(4, 4, 'David Kimani', 'Store Manager'),
(5, 5, 'Esther Mwikali', 'Barista');
 
INSERT INTO Customer (Customer_Id, Order_ID, Full_Name, Phone, Home_Address) VALUES
(1, 1, 'Faith Njeri', '+254 712345678', 'Kilimani, Nairobi'),
(2, 2, 'George Mutua', '+254 722334455', 'Westlands, Nairobi'),
(3, 3, 'Halima Abdi', '+254 733221100', 'Ngong Road, Nairobi'),
(4, 4, 'Ian Kiptoo', '+254 700998877', 'Runda, Nairobi'),
(5, 5, 'Joyce Wambui', '+254 711223344', 'Lavington, Nairobi');
 
INSERT INTO Payments (Payment_ID, Order_ID, Pa_Date, Method, Amount, Status) VALUES
(1, 1, '2026-09-10 09:05:00', 'M-Pesa', 920.00, 'Paid'),
(2, 2, '2026-09-10 12:40:00', 'Cash', 540.00, 'Paid'),
(3, 3, '2026-09-11 15:10:00', 'Card', 900.00, 'Paid'),
(4, 4, '2026-09-11 18:00:00', 'M-Pesa', 3500.00, 'Paid'),
(5, 5, '2026-09-12 07:45:00', 'Cash', 400.00, 'Pending');
 
INSERT INTO Orders (Order_ID, Employee_ID, Customer_Id, Payment_ID, O_Date, Medium, Status) VALUES
(1, 1, 1, 1, '2026-09-10 08:50:00', 'Delivery', 'Completed'),
(2, 2, 2, 2, '2026-09-10 12:30:00', 'In-House', 'Completed'),
(3, 3, 3, 3, '2026-09-11 15:00:00', 'Delivery', 'Completed'),
(4, 4, 4, 4, '2026-09-11 17:45:00', 'In-House', 'Completed'),
(5, 5, 5, 5, '2026-09-12 07:30:00', 'Delivery', 'Preparing');
 
INSERT INTO Order_Items (Order_ID, Item_ID, Quantity) VALUES
(1, 1, 2), -- Faith: 2x Sourdough Loaf
(1, 4, 1), -- Faith: 1x Red Velvet Cupcake
(2, 2, 3), -- George: 3x Butter Croissant
(3, 3, 2), -- Halima: 2x Chocolate Fudge Cake
(4, 6, 1), -- Ian: 1x Custom Birthday Cake
(5, 5, 2); -- Joyce: 2x Cinnamon Roll
 
