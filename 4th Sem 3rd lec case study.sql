use joins
CREATE TABLE Customers(
    CustID INT PRIMARY KEY,
    CustName VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(20)
);

CREATE TABLE Orders(
    OrderID INT PRIMARY KEY,
    CustID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CustID) REFERENCES Customers(CustID)
);

CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(100),
    Description VARCHAR(200)
);

CREATE TABLE Books(
    BookID INT PRIMARY KEY,
    Title VARCHAR(150),
    Author VARCHAR(100),
    CategoryID INT,
    StockCount INT,
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

CREATE TABLE OrderDetails(
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    BookID INT,
    Quantity INT,
    Price DECIMAL(10,2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

INSERT INTO Customers VALUES
(1,'Ali','ali@gmail.com','03123456789'),
(2,'Usman','usman@gmail.com','03219876543'),
(3,'Fatima','fatima@gmail.com','03001112222'),
(4,'Hoor','hoor@gmail.com','03334445555');

INSERT INTO Categories VALUES
(1,'Technology','Books related to computer and IT'),
(2,'History','Books about historical events'),
(3,'Literature','Novels and poetry books');

INSERT INTO Books VALUES
(101,'Introduction to Databases','Michael Stone',1,35),
(102,'Modern World History','Sarah Wilson',2,20),
(103,'English Poetry','Emily Watson',3,45),
(104,'Web Development Basics','Daniel Scott',1,30);

INSERT INTO Orders VALUES
(201,1,'2026-03-05',800),
(202,2,'2026-03-06',450),
(203,4,'2026-03-07',600),
(204,3,'2026-03-08',300);

INSERT INTO OrderDetails VALUES
(1,201,101,2,400),
(2,202,102,1,450),
(3,203,104,2,300),
(4,204,103,1,300);

SELECT * FROM Customers;
SELECT * FROM Orders;
SELECT * FROM Books;
SELECT * FROM Categories;
SELECT * FROM OrderDetails;