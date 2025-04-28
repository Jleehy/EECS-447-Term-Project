INSERT INTO Work (MatID, Title, Year) VALUES
(1, 'The Great Vase', 500),
(2, 'On the Heavens', -350),
(3, 'Epic of Gilgamesh', -2100),
(4, 'The Republic', -380),
(5, 'Rhind Mathematical Papyrus', -1550),
(6, 'The Iliad', -762),
(7, 'The Discobolus', -450),
(8, 'Elements', -300),
(9, 'Code of Hammurabi', -1754);

INSERT INTO Work_of_Art (MatID, State_of_Repair, Date_Restored) VALUES
(1, 'Excellent', '2018-06-15'),
(7, 'Good', '2015-04-10'),
(9, 'Fair', '2020-01-20');

INSERT INTO Ancient_Mathematics (MatID, Date_Proved, Focus) VALUES
(2, '0340-01-01', 'Geocentrism and cosmology'),
(5, '1550-01-01', 'Arithmetic and geometry'),
(8, '0300-01-01', 'Euclidean geometry');

INSERT INTO Literature_Piece (MatID, Genre, Substrate) VALUES
(3, 'Epic Poetry', 'Clay Tablets'),
(4, 'Philosophy', 'Parchment'),
(6, 'Epic Poetry', 'Scroll'),
(9, 'Legal Text', 'Stone');

INSERT INTO Creator (CreID, First_Name, Last_Name, Phone_Number, Email) VALUES
(1, 'Unknown', 'Sumerian', '000-000-0000', 'sumerian@example.com'),
(2, 'Aristotle', '', '000-000-0001', 'aristotle@example.com'),
(3, 'Unknown', 'Artist', '000-000-0002', 'vase@example.com'),
(4, 'Plato', '', '000-000-0003', 'plato@example.com'),
(5, 'Unknown', 'Egyptian Scribe', '000-000-0004', 'scribe@example.com'),
(6, 'Homer', '', '000-000-0005', 'homer@example.com'),
(7, 'Myron', '', '000-000-0006', 'myron@example.com'),
(8, 'Euclid', '', '000-000-0007', 'euclid@example.com'),
(9, 'Hammurabi', '', '000-000-0008', 'hammurabi@example.com');

INSERT INTO Creates (CreID, MatID) VALUES
(1, 3),
(2, 2),
(3, 1),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9);

INSERT INTO Copy (CopyID, MatID, Available) VALUES
(1, 1, TRUE),
(2, 2, TRUE),
(3, 3, FALSE),
(4, 4, TRUE),
(5, 5, TRUE),
(6, 6, FALSE),
(7, 7, TRUE),
(8, 8, FALSE),
(9, 9, TRUE);

INSERT INTO Client (AcctID, First_Name, Last_Name, Phone_Number, Email, Account_Tier, Account_Age) VALUES
(101, 'Alice', 'Smith', '123-456-7890', 'alice@example.com', 'Gold', 5),
(102, 'Bob', 'Johnson', '987-654-3210', 'bob@example.com', 'Silver', 2),
(103, 'Clara', 'Davis', '321-654-0987', 'clara@example.com', 'Bronze', 1);

INSERT INTO Administrator (AdmID, First_Name, Last_Name, Age, Phone_Number, Email, Activity_Status, Permissions) VALUES
(201, 'Eve', 'Admin', 35, '555-555-5555', 'eve.admin@example.com', 'Active', 'Full'),
(202, 'Charlie', 'Admin', 42, '444-444-4444', 'charlie.admin@example.com', 'Inactive', 'View Only');

INSERT INTO Loan (CopyID, AcctID, AdmID, Loan_Date, Due_Date, Return_Date) VALUES
(3, 101, 201, '2025-04-01', '2025-04-15', NULL),
(6, 102, 202, '2025-03-20', '2025-04-03', '2025-04-02'),
(2, 101, 202, '2025-04-10', '2025-04-24', NULL),
(5, 103, 201, '2025-04-05', '2025-04-19', NULL);