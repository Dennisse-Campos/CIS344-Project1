USE CraftStoreDB;

Create Table Customers(
	Customer_ID varchar(45) UNIQUE PRIMARY KEY NOT NULL,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100),
    Phone VARCHAR(15)
    );
    
Create Table Sales (
	Sales_ID VARCHAR(45) UNIQUE PRIMARY KEY NOT NULL,
    Customer_ID varchar(45) not null,
    FOREIGN KEY (Customer_ID) references Customers(Customer_ID),
    Sale_Date date not null,
    Total_Amount Decimal(10,2) not null,
    Payment_Method varchar(45) 
);

Create Table Suppliers (
	Supplier_ID Varchar(45) Unique Primary Key Not Null,
    Name Varchar(45) not null,
    Contact_Person varchar(100),
    Phone Varchar(15),
    Email Varchar(100)
);


Create table Sales_Products(
	Sale_Product_ID VarChar(45) Primary Key Unique Not Null,
    Sales_ID Varchar(45) Not null,
    Foreign Key (Sales_ID) references Sales(Sales_ID),
    Product_ID VarChar(45) Not NUll,
    Foreign Key (Product_ID) references Products(Product_ID),
    Quantity int Not null,
    Price_at_Sale Decimal(10,2) not null
);

Create Table Stock_Movement(
	Movement_ID Varchar(45) primary key Unique not null,
    Product_ID Varchar(45) not null,
    Foreign Key (Product_ID) references Products(Product_ID),
    Movement_Type enum("Sales", "Restock", "Return") Not null,
    Quantity int NOT NULL,
    Movement_Date date not null
);

Alter table Products
ADD COLUMN Supplier_ID varchar(45)not null;

Alter table Products
Add CONSTRAINT Supplier_ID FOREIGN KEY (Supplier_ID) references Suppliers (Supplier_ID);



