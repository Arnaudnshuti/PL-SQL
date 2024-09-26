SQL COMMANDS USED
***********************

1. CREATE TABLE Users (
    User_ID NUMBER PRIMARY KEY,
    Name VARCHAR2(50) NOT NULL,
    Email VARCHAR2(100) NOT NULL UNIQUE,
    Department_ID NUMBER,  -- FK from Departments
    FOREIGN KEY (Department_ID) REFERENCES Departments(Department_ID)
);

2. CREATE TABLE Roles (
    Role_ID NUMBER PRIMARY KEY,
    Role_Name VARCHAR2(50) NOT NULL
);

3. CREATE TABLE Permissions (
    Permission_ID NUMBER PRIMARY KEY,
    Permission_Name VARCHAR2(50) NOT NULL
);

4. CREATE TABLE Departments (
    Department_ID NUMBER PRIMARY KEY,
    Department_Name VARCHAR2(50) NOT NULL
);

5. CREATE TABLE User_Role (
    User_ID NUMBER,
    Role_ID NUMBER,
    PRIMARY KEY (User_ID, Role_ID),
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID),
    FOREIGN KEY (Role_ID) REFERENCES Roles(Role_ID)
);

6. CREATE TABLE Role_Permission (
    Role_ID NUMBER,
    Permission_ID NUMBER,
    PRIMARY KEY (Role_ID, Permission_ID),
    FOREIGN KEY (Role_ID) REFERENCES Roles(Role_ID),
    FOREIGN KEY (Permission_ID) REFERENCES Permissions(Permission_ID)
);

INSERT, DELETE AND UPDATE QUERRIES
*************************************
1. INSERT INTO Departments (Department_ID, Department_Name) 
VALUES (1, 'HR');

INSERT INTO Departments (Department_ID, Department_Name) 
VALUES (2, 'IT');

INSERT INTO Departments (Department_ID, Department_Name) 
VALUES (3, 'Finance');

2. INSERT INTO Users (User_ID, Name, Email, Department_ID) 
VALUES (101, 'John Doe', 'john.doe@gmail.com', 1);

INSERT INTO Users (User_ID, Name, Email, Department_ID) 
VALUES (102, 'Jane Smith', 'jane.smith@gmail.com', 2);

3. INSERT INTO Roles (Role_ID, Role_Name) 
VALUES (1, 'Admin');

INSERT INTO Roles (Role_ID, Role_Name) 
VALUES (2, 'Employee');
 

 4. INSERT INTO User_Role (User_ID, Role_ID) 
VALUES (101, 1);

INSERT INTO User_Role (User_ID, Role_ID) 
VALUES (102, 2);


5.  UPDATING
**************
-- Update a user's email
UPDATE Users
SET Email = 'john.newemail@gmail.com'
WHERE User_ID = 101;

DELETING
**********
-- Delete a department
DELETE FROM Departments
WHERE Department_ID = 3;

RETRIVING DATA
****************
-- Join Users with Departments
SELECT Users.Name, Departments.Department_Name
FROM Users
JOIN Departments ON Users.Department_ID = Departments.Department_ID;


SUBQUERRIES
*************
-- Select users who belong to the IT department
SELECT Name 
FROM Users 
WHERE Department_ID = (SELECT Department_ID FROM Departments WHERE Department_Name = 'IT');


DDL, DML, DCL, and TCL:
***********************
-- Add a new column to the Users table
ALTER TABLE Users ADD Date_Joined DATE;


-- Grant privileges to a user
GRANT SELECT, INSERT ON Users TO another_user;


-- Commit a transaction
COMMIT;

-- Rollback a transaction
ROLLBACK;




