-- Task 1: Database Schema Creation
-- Define tables: Customers, Policies, Claims, PolicyTypes.
    -- Include fields such as CustomerID, PolicyID, ClaimID, PolicyTypeID, ClaimAmount, ClaimDate, 
	-- PolicyStartDate, PolicyEndDate, etc.

---Customers Table---------
CREATE TABLE Customers (
    CustomerID SERIAL PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Gender CHAR(1),
    Address VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(50),
    ZipCode VARCHAR(10)
);

---2. PolicyTypes Table

CREATE TABLE PolicyTypes (
    PolicyTypeID SERIAL PRIMARY KEY,
    PolicyTypeName VARCHAR(50),
    Description TEXT
);

----3. Policies Table

CREATE TABLE Policies (
    PolicyID SERIAL PRIMARY KEY,
    CustomerID INT REFERENCES Customers(CustomerID),
    PolicyTypeID INT REFERENCES PolicyTypes(PolicyTypeID),
    PolicyStartDate DATE,
    PolicyEndDate DATE,
    Premium DECIMAL(10,2)
);

---4. Claims Table

CREATE TABLE Claims (
    ClaimID SERIAL PRIMARY KEY,
    PolicyID INT REFERENCES Policies(PolicyID),
    ClaimDate DATE,
    ClaimAmount DECIMAL(10,2),
    ClaimDescription TEXT,
    ClaimStatus VARCHAR(50)
);
