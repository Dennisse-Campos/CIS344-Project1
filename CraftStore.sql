Use CraftStore;

Select * From Suppliers;

Insert into Suppliers (Supplier_ID, Name, Contact_Person, Email)
Values ("1", "Art Supplies Co.","Olivia Bennett","contact@artsupplies.com");

insert into Suppliers
Values("2", "Paper Masters LTD.", "Liam Carter","(555)-123-7890","support@papermasters.com"),
		("3", "Harper Craft Supplies","Sophia Reynolds", "(555)-987-6543)","sophia.r@harpercraft.com");
        
insert into Suppliers
Values("4","Bead World","Daniel Carter","(555)-782-3491","daniel.carter@beadworld.com");
        
Select * from Products;

insert into Products
Values ("1", "Acrylic Paint Set", 15.99, "Paints", 50, "1"),
		("2", "Watercolor Paper Pad", 12.50, "Paper" , 30 , "2"),
        ("3", "Wooden Beads Set", 8.75, "Beads", 100, "4");
        
Select * From Customers;

insert into Customers
Values ("M001", "Emma Johnson", "emma.j@email.com", "(555)-123-4567"),
		("M002", "Daniel Smith", "daniel.s@email.com", "(555)-234-5678"),
        ("M003", "Sophia Lee", "sophia.l@email.com", "(555)-345-6789");

Select * From Sales;

insert into Sales
Values  ("001","M001","2024-02-15",31.98,"Credit Card"),
		("002", "M002","2024-02-16", 37.50, "Cash");
        

Select * From Sales_Products;

insert into Sales_Products
Values  ("SP001", "001","1",2, 31.98),
		("SPOO1", "002","2",3,37.50);

Select * from Stock_Movement;

insert into Stock_Movement
Values ("SM001","1","Restock", 20, "2024-02-10"),
		("SM002", "3", "Return", 2, "2024-02-16");