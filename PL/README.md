System Management System - SQL Project
Problem Statement
------------------
This project manages a System Management System using SQL in Oracle Database. The system consists of tables for Users, Departments, Roles, and Permissions, tracking user details, department allocations, role assignments, and permission management. The objective is to ensure smooth operation and security for managing user roles and permissions.

SQL Commands Description
The following SQL commands were executed:

DDL Commands: Created tables for Users, Departments, Roles, Permissions, and their relationships using foreign keys.
DML Commands: Inserted, updated, and deleted data in these tables to simulate a working system.
Joins & Subqueries: Performed inner and left joins to retrieve user roles and department affiliations.
DCL Commands: Granted and revoked user access.
TCL Commands: Committed and rolled back transactions to ensure data integrity.

Screenshots
------------
![Conceptiual Diagram](https://github.com/user-attachments/assets/699274c3-41c8-460a-b89d-cad898715af1)
![Scre(46)](https://github.com/user-attachments/assets/a2cb7bc8-44b6-4afb-91e3-a6f22420e8bb)
![Scree (47)](https://github.com/user-attachments/assets/e1efcefa-ac2e-46e0-b702-78525d2032d9)
![Scree](https://github.com/user-attachments/assets/982823ff-45c7-490e-8f49-aaeb43b74a5c)
![Screenot (45)](https://github.com/user-attachments/assets/6f7b965a-68bf-4351-bb74-0c33ef1031ea)
![Screensh (45)](https://github.com/user-attachments/assets/9a9f15c8-4c4c-48ad-a3af-54ab488230ba)
![Screenshot (48)](https://github.com/user-attachments/assets/1832e842-cf33-422e-9d8b-714fa9721415)
![Screenshot (49)](https://github.com/user-attachments/assets/3d410732-bded-4167-ac2f-440c528fb8d0)
![Screenshot (50)](https://github.com/user-attachments/assets/d0fae6ef-d1e1-4660-a6da-6e97fcf40f34)
![Screenshot (51)](https://github.com/user-attachments/assets/6ed3d520-8180-42b9-889c-985bcc679d64)
![Screenshot (52)](https://github.com/user-attachments/assets/dedb5425-3494-426f-abcd-a1155efb832f)
![Screenshot (53)](https://github.com/user-attachments/assets/5770668a-6485-44f1-9a34-f3e3059aa410)
![Screenshot (54)](https://github.com/user-attachments/assets/b82bbf14-a6a8-4f12-a2a2-655d20d5e488)
![Screenshot (55)](https://github.com/user-attachments/assets/37aec79b-eea7-4cdd-ac98-15b17d228e17)
![Screenshot (56)](https://github.com/user-attachments/assets/31923251-80b9-4a38-855c-d2e55b77bf2c)

Example Queries:
Table creation:
CREATE TABLE Users (
  User_ID NUMBER PRIMARY KEY,
  Name VARCHAR2(50),
  Email VARCHAR2(100) UNIQUE,
  Department_ID NUMBER,
  FOREIGN KEY (Department_ID) REFERENCES Departments(Department_ID)
);

Insert data:
INSERT INTO Users (User_ID, Name, Email, Department_ID) 
VALUES (101, 'John Doe', 'john.doe@example.com', 1);


Explanation of Results and Transactions
User and Department Relationship: Each user is assigned to a department, demonstrating a one-to-many relationship. Successful queries return user names and their corresponding departments.
Role Assignment: Roles are assigned to users, showing how the system manages user roles with many-to-many relationships using junction tables.
Transactions: Data insertions, updates, and deletions were tested using COMMIT and ROLLBACK to maintain data consistency in case of errors.
















