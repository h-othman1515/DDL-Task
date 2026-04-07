-- === 1 ===
CREATE DATABASE StoreDB;
USE StoreDB;

-- === 2 ===
CREATE TABLE Users (
UserID INT PRIMARY KEY,
UserName VARCHAR(50) NOT NULL
);
-- === 3 & 4 ===
ALTER TABLE Users ADD Email VARCHAR(100) NOT NULL UNIQUE;

-- === 5 & 6 ===
CREATE TABLE Products (
ProductID INT PRIMARY KEY,
ProductName VARCHAR(100) NOT NULL,
Price DECIMAL(10, 2) NOT NULL
);

-- === 7 & 8 & 9 ===
CREATE TABLE Orders(
OrderID INT PRIMARY KEY,
OrderNumber VARCHAR(50) NOT NULL,
OrderDate DATETIME DEFAULT GETDATE(),
UserID INT NOT NULL,
CONSTRAINT FK_Orders_Users FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- === 10 ===
CREATE TABLE OrderDetails (
OrderID INT NOT NULL,
ProductID INT NOT NULL,
Quantity INT NOT NULL,
CONSTRAINT PK_OrderDetails PRIMARY KEY (OrderID, ProductID),
CONSTRAINT FK_OrderDetails_Orders FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
CONSTRAINT FK_OrderDetails_Products FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- === 11 ===
CREATE TABLE Categories (
CategoryID INT PRIMARY KEY,
CategoryName VARCHAR(100) NOT NULL
);
ALTER TABLE Products ADD CategoryID INT;
ALTER TABLE Products ADD CONSTRAINT FK_Products_Categories FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID);

-- === 12 ===
CREATE TABLE Employees (
EmployeeID INT PRIMARY KEY,
EmpName VARCHAR(50) NOT NULL,
ManagerID INT,
);
ALTER TABLE Employees ADD CONSTRAINT FK_Employees_Manager FOREIGN KEY (ManagerID) REFERENCES Employees(EmployeeID);

-- === 13 ===
ALTER TABLE Users ADD Phone VARCHAR(20);
ALTER TABLE Users DROP COLUMN Phone;

-- === 14 ===
ALTER TABLE Users ALTER COLUMN UserName VARCHAR(60);

-- === 15 ===
CREATE TABLE Customers (
CustomerID INT PRIMARY KEY,
CustomerName VARCHAR(100) NOT NULL,
CustomerPhone VARCHAR(20)
);

-- === 16 ===
CREATE TABLE Payments (
PaymentID INT PRIMARY KEY,
OrderID INT NOT NULL,
PaymentDate DATETIME DEFAULT GETDATE(),
Amount DECIMAL(10, 2) NOT NULL,
PaymentMethod VARCHAR(50) NOT NULL,
CONSTRAINT FK_Payments_Orders FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- === 17 ===
CREATE TABLE Students (
student_id INT PRIMARY KEY,
student_name VARCHAR(100) NOT NULL,
);

-- === 18 ===
CREATE TABLE Courses (
Course_id INT PRIMARY KEY,
Course_title VARCHAR(100) NOT NULL
);

-- === 19 ===
CREATE TABLE StudentCourses (
student_id INT NOT NULL,
Course_id INT NOT NULL,
CONSTRAINT PK_StudentCourses PRIMARY KEY (student_id, Course_id),
CONSTRAINT FK_StudentCourses_Students FOREIGN KEY (student_id) REFERENCES Students(student_id),
CONSTRAINT FK_StudentCourses_Courses FOREIGN KEY (Course_id) REFERENCES Courses(Course_id)
);
-- === 20 ===
CREATE TABLE lOGS (
LogID INT PRIMARY KEY,
LogMessage VARCHAR(255) NOT NULL,
LogDate DATETIME DEFAULT GETDATE()
);

-- === 21 ===
TRUNCATE TABLE Logs;

-- === 22 ===
ALTER TABLE Payments DROP COLUMN PaymentMethod;

-- === 23 ===
DROP TABLE lOGS;

-- === 24 ===
CREATE TABLE Logs (
LogID INT PRIMARY KEY IDENTITY(1,1),
LogMessage VARCHAR(255) NOT NULL,
LogDate DATETIME DEFAULT GETDATE()
);

-- === 25 ===
CREATE TABLE Departments (
DepartmentID INT PRIMARY KEY NOT NULL,
DepartmentName VARCHAR(100) NOT NULL,
DepartmentShort VARCHAR(10)
);

-- === 26 ===
CREATE TABLE Books (
BookID INT PRIMARY KEY,
Title VARCHAR(255) NOT NULL,
Price DECIMAL(10, 2) NOT NULL,
AuthorID INT NOT NULL,
);

-- === 27 ===
CREATE TABLE Authors (
AuthorID INT PRIMARY KEY,
AuthorName VARCHAR(255) NOT NULL,
BookID INT NOT NULL,
CONSTRAINT FK_Authors_Books FOREIGN KEY (BookID) REFERENCES Books(BookID)
);
ALTER TABLE Books ADD CONSTRAINT FK_Books_Authors FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID);

-- === 28 ===
CREATE TABLE IDTracker (
ID INT PRIMARY KEY IDENTITY(1,1)
);
INSERT INTO IDTracker DEFAULT VALUES;

-- === 29 ===
CREATE TABLE EventLog (
EventID INT PRIMARY KEY IDENTITY(1,1),
TicketPrice DECIMAL(10, 2) NOT NULL,
EventName VARCHAR(255) NOT NULL,
EventDate DATETIME DEFAULT GETDATE()
);

-- === 30 ===
CREATE TABLE Inventory (
ItemID INT PRIMARY KEY IDENTITY(1,1),
ItemName VARCHAR(100) NOT NULL,
Quantity INT NOT NULL,
UnitPrice DECIMAL(10, 2) NOT NULL,
);
ALTER TABLE Inventory ADD CONSTRAINT Quantity UNIQUE (Quantity);

--- ===== Optional =====
-- Optional 1 --
CREATE DATABASE TestDB;
DROP DATABASE TestDB;

-- Optional 2 --
CREATE TABLE Products_NEW (
ProductID INT PRIMARY KEY,
ProductName VARCHAR(100) NOT NULL,
Price DECIMAL(10, 2) NOT NULL
);

-- Optional 3 --
ALTER TABLE Products_NEW ADD Description VARCHAR(255);

-- Optional 4 --
DROP TABLE Products_NEW;

-- Optional 5 --
CREATE TABLE Apple (
AppleID INT PRIMARY KEY,
);

-- Optional 6 --
CREATE TABLE Laptop (
LaptopID INT PRIMARY KEY,
Brand VARCHAR(50) NOT NULL,
Model VARCHAR(50) NOT NULL,
Price DECIMAL(10, 2) NOT NULL
);
DROP TABLE Laptop;

-- Optional 7 --
CREATE TABLE Orders_new (
OrderID INT PRIMARY KEY,
OrderDate DATETIME DEFAULT GETDATE()
);
TRUNCATE TABLE Orders_new;

-- Optional 8 --
CREATE TABLE Subscribers (
SubscriberID INT PRIMARY KEY,
Email VARCHAR(100) NOT NULL UNIQUE
);

-- Optional 9 --
CREATE TABLE Items (
ItemID INT PRIMARY KEY,
Price DECIMAL(10, 2) NOT NULL
);

-- Optional 10 --
CREATE TABLE Cars (
CarID INT PRIMARY KEY,
Make VARCHAR(50) NOT NULL,
Model VARCHAR(50) NOT NULL,
Year INT NOT NULL,
LicensePlate VARCHAR(20) NOT NULL UNIQUE
);
