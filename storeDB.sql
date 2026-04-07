--CREATE DATABASE StoreDB;
--USE StoreDB;

--CREATE TABLE Users (
--	UserID INT PRIMARY KEY,
--	UserName VARCHAR(50) NOT NULL
--);

--ALTER TABLE Users ADD Email VARCHAR(100) NOT NULL UNIQUE, Phone VARCHAR(20);

--CREATE TABLE Products (
--	ProductID INT PRIMARY KEY,
--	ProductName VARCHAR(100) NOT NULL,
--	Price DECIMAL(10, 2) NOT NULL
--);

--CREATE TABLE Orders(
--	OrderID INT PRIMARY KEY,
--	OrderNumber VARCHAR(50) NOT NULL,
--	OrderDate DATETIME DEFAULT GETDATE(),
--	UserID INT NOT NULL,
--	CONSTRAINT FK_Orders_Users FOREIGN KEY (UserID) 
--    REFERENCES Users(UserID)
--);

--CREATE TABLE OrderDetails (
--    OrderID INT NOT NULL,
--    ProductID INT NOT NULL,
--    Quantity INT NOT NULL,
--    CONSTRAINT PK_OrderDetails PRIMARY KEY (OrderID, ProductID), -- this line prevents duplicate entries for the same product in the same order
--    CONSTRAINT FK_OrderDetails_Orders FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
--    CONSTRAINT FK_OrderDetails_Products FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
--);

--CREATE TABLE Categories (
--	CategoryID INT PRIMARY KEY,
--	CategoryName VARCHAR(100) NOT NULL
--);

--ALTER TABLE Products ADD CategoryID INT;
--ALTER TABLE Products ADD CONSTRAINT FK_Products_Categories FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID);

--CREATE TABLE Employees (
--	EmployeeID INT PRIMARY KEY,
--	EmpName VARCHAR(50) NOT NULL,
--	ManagerID INT,
--);

--ALTER TABLE Employees ADD CONSTRAINT FK_Employees_Manager FOREIGN KEY (ManagerID) REFERENCES Employees(EmployeeID);

--ALTER TABLE Users DROP COLUMN PHONE;

--ALTER TABLE Users ALTER COLUMN UserName VARCHAR(60);

--CREATE TABLE Customers (
--	CustomerID INT PRIMARY KEY,
--	CustomerName VARCHAR(100) NOT NULL,
--	CustomerPhone VARCHAR(20)
--);

--CREATE TABLE Payments (
--	PaymentID INT PRIMARY KEY,
--	OrderID INT NOT NULL,
--	PaymentDate DATETIME DEFAULT GETDATE(),
--	Amount DECIMAL(10, 2) NOT NULL,
--	PaymentMethod VARCHAR(50) NOT NULL,
--	CONSTRAINT FK_Payments_Orders FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
--);

--CREATE TABLE Students (
--	student_id INT PRIMARY KEY,
--	student_name VARCHAR(100) NOT NULL,
--);

--CREATE TABLE Courses (
--	Course_id INT PRIMARY KEY,
--	Course_title VARCHAR(100) NOT NULL
--);

--CREATE TABLE StudentCourses (
--	student_id INT NOT NULL,
--	Course_id INT NOT NULL,
--	CONSTRAINT PK_StudentCourses PRIMARY KEY (student_id, Course_id),
--	CONSTRAINT FK_StudentCourses_Students FOREIGN KEY (student_id) REFERENCES Students(student_id),
--	CONSTRAINT FK_StudentCourses_Courses FOREIGN KEY (Course_id) REFERENCES Courses(Course_id)
--);

--CREATE TABLE lOGS (
--	LogID INT PRIMARY KEY,
--	LogMessage VARCHAR(255) NOT NULL,
--	LogDate DATETIME DEFAULT GETDATE()
--);

--TRUNCATE TABLE Logs;

--ALTER TABLE Payments DROP COLUMN PaymentMethod;

--DROP TABLE lOGS;

--CREATE TABLE Logs (
--	LogID INT PRIMARY KEY IDENTITY(1,1),
--	LogMessage VARCHAR(255) NOT NULL,
--	LogDate DATETIME DEFAULT GETDATE()
--);

--CREATE TABLE Departments (
--	DepartmentID INT PRIMARY KEY NOT NULL,
--	DepartmentName VARCHAR(100) NOT NULL,
--	DepartmentShort VARCHAR(10)
--);

--CREATE TABLE Books (
--	BookID INT PRIMARY KEY,
--	Title VARCHAR(255) NOT NULL,
--	Price DECIMAL(10, 2) NOT NULL,
--	AuthorID INT NOT NULL,
--); 

--CREATE TABLE Authors (
--	AuthorID INT PRIMARY KEY,
--	AuthorName VARCHAR(255) NOT NULL,
--	BookID INT NOT NULL,
--	CONSTRAINT FK_Authors_Books FOREIGN KEY (BookID) REFERENCES Books(BookID)
--);

--ALTER TABLE Books ADD CONSTRAINT FK_Books_Authors FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID);

--CREATE TABLE IDTracker (
--    ID INT PRIMARY KEY IDENTITY(1,1)
--);

--INSERT INTO IDTracker DEFAULT VALUES;

--CREATE TABLE EventLog (
--    EventID INT PRIMARY KEY IDENTITY(1,1),
--    TicketPrice DECIMAL(10, 2) NOT NULL,
--    EventName VARCHAR(255) NOT NULL,
--    EventDate DATETIME DEFAULT GETDATE()
--);

--CREATE TABLE Inventory (
--    ItemID INT PRIMARY KEY IDENTITY(1,1),
--    ItemName VARCHAR(100) NOT NULL,
--    Quantity INT NOT NULL,
--    UnitPrice DECIMAL(10, 2) NOT NULL,
--);

ALTER TABLE Inventory ADD CONSTRAINT Quantity UNIQUE (Quantity);