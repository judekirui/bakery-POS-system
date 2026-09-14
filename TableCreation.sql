CREATE TABLE Ingredient (
    Ingredient_ID INT NOT NULL,
    Purc_Item_ID INT NOT NULL,
    Name VARCHAR(100) NOT NULL,
    Quantity INT NOT NULL,
    CONSTRAINT pk_ingredient PRIMARY KEY (Ingredient_ID)
);
 
CREATE TABLE Purchase_Items (
    Purc_Item_ID INT NOT NULL,
    Ingredient_ID INT NOT NULL,
    Purchase_ID INT NOT NULL,
    Quantity INT NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    CONSTRAINT pk_purchase_items PRIMARY KEY (Purc_Item_ID)
);
 
CREATE TABLE Purchases (
    Purchase_ID INT NOT NULL,
    Supplier_ID INT NOT NULL,
    Purc_Item_ID INT NOT NULL,
    P_Dat DATETIME NOT NULL,
    CONSTRAINT pk_purchases PRIMARY KEY (Purchase_ID)
);
 
CREATE TABLE Supplier (
    Supplier_ID INTEGER NOT NULL,
    Purchase_ID INT NOT NULL,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Address VARCHAR(150),
    CONSTRAINT pk_supplier PRIMARY KEY (Supplier_ID),
    CONSTRAINT uq_supplier_purchase UNIQUE (Purchase_ID),
    CONSTRAINT uq_supplier_email UNIQUE (Email)
);
 
CREATE TABLE Menu (
    Menu_Item_ID INT NOT NULL,
    Ingredient_ID INT NOT NULL,
    Name VARCHAR(100) NOT NULL,
    Description VARCHAR(255),
    Price DECIMAL(10,2) NOT NULL,
    CONSTRAINT pk_menu PRIMARY KEY (Menu_Item_ID)
);
 
CREATE TABLE Payments (
    Payment_ID INT NOT NULL,
    Order_ID INT NOT NULL,
    Pa_Date DATETIME NOT NULL,
    Method VARCHAR(30) NOT NULL,
    Amount DECIMAL(10,2) NOT NULL,
    Status VARCHAR(20) NOT NULL,
    CONSTRAINT pk_payments PRIMARY KEY (Payment_ID)
);
 
CREATE TABLE Employees (
    Employee_ID INT NOT NULL,
    Order_ID INT NOT NULL,
    Name VARCHAR(50) NOT NULL,
    Role VARCHAR(50) NOT NULL,
    CONSTRAINT pk_employees PRIMARY KEY (Employee_ID),
    CONSTRAINT uq_employees_order UNIQUE (Order_ID)
);
 
CREATE TABLE Customer (
    Customer_Id INT NOT NULL,
    Order_ID INT NOT NULL,
    Full_Name VARCHAR(100) NOT NULL,
    Phone VARCHAR(15) NOT NULL,
    Home_Address VARCHAR(150),
    CONSTRAINT pk_customer PRIMARY KEY (Customer_Id),
    CONSTRAINT uq_customer_order UNIQUE (Order_ID),
    CONSTRAINT uq_customer_phone UNIQUE (Phone)
);
 
CREATE TABLE Orders (
    Order_ID INT NOT NULL,
    Employee_ID INT NOT NULL,
    Customer_Id INT NOT NULL,
    Payment_ID INT NOT NULL,
    O_Date DATETIME NOT NULL,
    Medium VARCHAR(30),
    Status VARCHAR(20) NOT NULL,
    CONSTRAINT pk_orders PRIMARY KEY (Order_ID),
    CONSTRAINT uq_orders_payment UNIQUE (Payment_ID)
);
 
CREATE TABLE Order_Items (
    Item_ID INT NOT NULL,
    Order_ID INT NOT NULL,
    Quantity INT,
    CONSTRAINT pk_order_items PRIMARY KEY (Order_ID, Item_ID)
);
