
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, PhoneNumber, Address, RegistrationDate)
VALUES
(1, 'Anel', 'Anel', 'Anel.Anel@gmail.com', '123-456-7890', '123 Main St, Cityville', '2023-01-01'),
(2, 'Kamila', 'Dosymbek', 'kamo@email.ru', '987-654-3210', '456 Oak St, Townburg', '2023-02-01'),
(3, 'Askar', 'Amanbay', 'Askarik@gmail.com', '555-123-4567', '789 Pine St, Villagetown', '2023-03-01');

INSERT INTO CustomerCards (CardID, CustomerID, CardNumber, ExpiryDate)
VALUES
(101, 1, '1234567890123456', '2025-01-01'),
(102, 2, '9876543210987654', '2024-06-01'),
(103, 3, '1111222233334444', '2023-12-01');

INSERT INTO Products (ProductID, ProductName, Price, StockQuantity, Description, Category, ExpiryDate)
VALUES
(1, 'Abzal', 2.50, 100, 'Fresh whole milk', 'Dairy', '2023-12-31'),
(2, 'Aran', 1.75, 150, 'Whole wheat bread', 'Bakery', '2023-11-15'),
(3, 'Yerdaulet', 1.99, 200, 'Large brown eggs', 'Dairy', '2023-12-20');

INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount, Status)
VALUES
(1001, 1, '2023-04-05', 15.25, 'Shipped'),
(1002, 2, '2023-04-08', 22.50, 'Processing'),
(1003, 3, '2023-04-10', 10.99, 'Pending');

INSERT INTO OrderItems (OrderItemID, OrderID, ProductID, Quantity, UnitPrice)
VALUES
(201, 1001, 1, 2, 2.50),
(202, 1001, 2, 1, 1.75),
(203, 1002, 3, 3, 1.99);

INSERT INTO Suppliers (SupplierID, SupplierName, ContactPerson, Email)
VALUES
(301, 'Fresh Dairy Supplier', 'John Supplier', 'john.supplier@example.com'),
(302, 'Bakery Delights', 'Jane Baker', 'jane.baker@example.com'),
(303, 'Eggcellent Farms', 'Bob Eggman', 'bob.eggman@example.com');

INSERT INTO SupplierProducts (SupplierProductID, SupplierID, ProductID, UnitPrice)
VALUES
(401, 301, 1, 2.00),
(402, 302, 2, 1.50),
(403, 303, 3, 1.75);

INSERT INTO Employees (EmployeeID, FirstName, LastName, Position, HireDate, Salary)
VALUES
(501, 'Behruz', 'Johnson', 'Manager', '2022-05-15', 60000.00),
(502, 'Yerkhan', 'Smith', 'Clerk', '2022-06-01', 40000.00),
(503, 'Bagniet', 'Davis', 'Cashier', '2022-07-10', 35000.00);

INSERT INTO Departments (DepartmentID, DepartmentName, Location, ManagerID)
VALUES
(601, 'Dairy Department', 'Section A', 501),
(602, 'Bakery Department', 'Section B', 502),
(603, 'Cashier Department', 'Checkout Area', 503);

INSERT INTO EmployeeDepartments (EmployeeDepartmentID, EmployeeID, DepartmentID)
VALUES
(701, 501, 601),
(702, 502, 602),
(703, 503, 603);

INSERT INTO Sales (SaleID, ProductID, SaleDate, QuantitySold, Discount)
VALUES
(801, 1, '2023-04-15', 5, 0.10),
(802, 2, '2023-04-20', 8, 0.05),
(803, 3, '2023-04-25', 10, 0.15);
