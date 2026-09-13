ALTER TABLE Customer
    ADD CONSTRAINT fk_customer_order FOREIGN KEY (Order_ID)
        REFERENCES Orders (Order_ID);
 
ALTER TABLE Employees
    ADD CONSTRAINT fk_employees_order FOREIGN KEY (Order_ID)
        REFERENCES Orders (Order_ID);
 
ALTER TABLE Payments
    ADD CONSTRAINT fk_payments_order FOREIGN KEY (Order_ID)
        REFERENCES Orders (Order_ID);
 
ALTER TABLE Ingredient
    ADD CONSTRAINT fk_ingredient_purchitem FOREIGN KEY (Purc_Item_ID)
        REFERENCES Purchase_Items (Purc_Item_ID);
 
ALTER TABLE Purchase_Items
    ADD CONSTRAINT fk_purchitems_purchase FOREIGN KEY (Purchase_ID)
        REFERENCES Purchases (Purchase_ID);
 
ALTER TABLE Purchases
    ADD CONSTRAINT fk_purchases_supplier FOREIGN KEY (Supplier_ID)
        REFERENCES Supplier (Supplier_ID);