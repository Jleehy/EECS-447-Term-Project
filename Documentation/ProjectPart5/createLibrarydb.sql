
CREATE TABLE Work (
    MatID INT PRIMARY KEY,
    Title VARCHAR(255),
    Year INT
);

CREATE TABLE Work_of_Art (
    MatID INT PRIMARY KEY,
    State_of_Repair VARCHAR(100),
    Date_Restored DATE,
    FOREIGN KEY (MatID) REFERENCES Work(MatID)
);

CREATE TABLE Ancient_Mathematics (
    MatID INT PRIMARY KEY,
    Date_Proved DATE,
    Focus VARCHAR(255),
    FOREIGN KEY (MatID) REFERENCES Work(MatID)
);

CREATE TABLE Literature_Piece (
    MatID INT PRIMARY KEY,
    Genre VARCHAR(100),
    Substrate VARCHAR(100),
    FOREIGN KEY (MatID) REFERENCES Work(MatID)
);

CREATE TABLE Creator (
    CreID INT PRIMARY KEY,
    First_Name VARCHAR(100),
    Last_Name VARCHAR(100),
    Phone_Number VARCHAR(15),
    Email VARCHAR(100)
);

CREATE TABLE Creates (
    CreID INT,
    MatID INT,
    PRIMARY KEY (CreID, MatID),
    FOREIGN KEY (CreID) REFERENCES Creator(CreID),
    FOREIGN KEY (MatID) REFERENCES Work(MatID)
);

CREATE TABLE Copy (
    CopyID INT PRIMARY KEY,
    MatID INT,
    Available BOOLEAN,
    FOREIGN KEY (MatID) REFERENCES Work(MatID)
);

CREATE TABLE Client (
    AcctID INT PRIMARY KEY,
    First_Name VARCHAR(100),
    Last_Name VARCHAR(100),
    Phone_Number VARCHAR(15),
    Email VARCHAR(100),
    Account_Tier VARCHAR(50),
    Account_Age INT
);

CREATE TABLE Administrator (
    AdmID INT PRIMARY KEY,
    First_Name VARCHAR(100),
    Last_Name VARCHAR(100),
    Age INT,
    Phone_Number VARCHAR(15),
    Email VARCHAR(100),
    Activity_Status VARCHAR(50),
    Permissions VARCHAR(100)
);

CREATE TABLE Loan (
    CopyID INT,
    AcctID INT,
    AdmID INT,
    Loan_Date DATE,
    Due_Date DATE,
    Return_Date DATE,
    PRIMARY KEY (CopyID, AcctID, AdmID),
    FOREIGN KEY (CopyID) REFERENCES Copy(CopyID),
    FOREIGN KEY (AcctID) REFERENCES Client(AcctID),
    FOREIGN KEY (AdmID) REFERENCES Administrator(AdmID)
);

