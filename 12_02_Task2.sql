-- Task 2: Data Population
-- Insert realistic sample data into each table, ensuring a variety of scenarios are represented, 
-- such as different policy types, claim amounts, and customer profiles.

INSERT INTO PolicyTypes (PolicyTypeName, Description) VALUES
('Auto', 'Insurance coverage for automobiles'),
('Home', 'Insurance coverage for residential homes'),
('Life', 'Long-term insurance coverage upon the policyholder''s death'),
('Health', 'Insurance coverage for medical and surgical expenses');

----------

INSERT INTO Customers (FirstName, LastName, DateOfBirth, Gender, Address, City, State, ZipCode) VALUES
('John', 'Doe', '1980-04-12', 'M', '123 Elm St', 'Springfield', 'IL', '62704'),
('Jane', 'Smith', '1975-09-23', 'F', '456 Maple Ave', 'Greenville', 'TX', '75402'),
('Emily', 'Johnson', '1990-01-17', 'F', '789 Oak Dr', 'Phoenix', 'AZ', '85001'),
('Michael', 'Brown', '1985-07-30', 'M', '321 Pine St', 'Riverside', 'CA', '92501');

-------------
INSERT INTO Policies (CustomerID, PolicyTypeID, PolicyStartDate, PolicyEndDate, Premium) VALUES
(1, 1, '2021-01-01', '2022-01-01', 120.00),
(2, 2, '2021-02-01', '2022-02-01', 150.00),
(1, 3, '2021-03-01', '2024-03-01', 300.00),
(3, 4, '2021-04-01', '2022-04-01', 200.00),
(4, 1, '2021-05-01', '2022-05-01', 100.00);

-----------------
INSERT INTO Claims (PolicyID, ClaimDate, ClaimAmount, ClaimDescription, ClaimStatus) VALUES
(1, '2021-06-15', 500.00, 'Car accident', 'Approved'),
(2, '2021-07-20', 1000.00, 'House fire', 'Pending'),
(3, '2021-08-05', 20000.00, 'Life insurance claim', 'Approved'),
(4, '2021-09-10', 150.00, 'Doctor visit', 'Denied'),
(5, '2021-10-22', 300.00, 'Car theft', 'Approved');

