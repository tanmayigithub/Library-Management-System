CREATE DATABASE IF NOT EXISTS books;
USE books;

CREATE TABLE Books (
  Book_ID varchar(10) PRIMARY KEY,
  Title varchar(100),
  Author VARCHAR(100),
  ISBN varchar(100),
  Genre VARCHAR(50), 
  Publisher VARCHAR(50),
  Publication_Date DATE
);

CREATE TABLE Branch (
  Branch_ID varchar(10) PRIMARY KEY,
  Branch_Name VARCHAR(50),
  House_No VARCHAR(10),
  Lane VARCHAR(50),
  Address1 VARCHAR(50),
  Address2 VARCHAR(50),
  City VARCHAR(50),
  State VARCHAR(50),
  Pincode VARCHAR(10),
  Phone_Number VARCHAR(20),
  Email VARCHAR(50)
);

CREATE TABLE Book_Copies (
  Copy_ID varchar(10) PRIMARY KEY,
  Book_ID varchar(10),
  Branch_ID varchar(10),
  Status VARCHAR(20),
  Due_Date DATE,
  FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID),
  FOREIGN KEY (Branch_ID) REFERENCES Branch(Branch_ID)
);

CREATE TABLE Members (
  Member_ID varchar(10) PRIMARY KEY,
  First_Name VARCHAR(50),
  Last_Name VARCHAR(50),
  Phone_Number VARCHAR(20),
  Email VARCHAR(50),
  House_No VARCHAR(10),
  Lane VARCHAR(50),
  Address1 VARCHAR(50),
  Address2 VARCHAR(50),
  City VARCHAR(50),
  State VARCHAR(50),
  Pincode VARCHAR(10),
  Membership_Expiration_Date DATE
);

CREATE TABLE Checkout (
  Checkout_ID varchar(10) PRIMARY KEY,
  Member_ID varchar(10),
  Copy_ID varchar(10),
  Checkout_Date DATE,
  Due_Date DATE,
  Return_Date DATE,
  FOREIGN KEY (Member_ID) REFERENCES Members(Member_ID),
  FOREIGN KEY (Copy_ID) REFERENCES Book_Copies(Copy_ID)
);

CREATE TABLE Fine (
  Fine_ID varchar(10) PRIMARY KEY,
  Member_ID varchar(10),
  Copy_ID varchar(10),
  Fine_Amount DECIMAL(10, 2),
  Fine_Date DATE,
  Status VARCHAR(20),
  FOREIGN KEY (Member_ID) REFERENCES Members(Member_ID),
  FOREIGN KEY (Copy_ID) REFERENCES Book_Copies(Copy_ID)
);


CREATE TABLE Inventory (
  Inventory_ID varchar(10) PRIMARY KEY,
  Branch_ID varchar(10),
  Book_ID varchar(10),
  Quantity INT,
  Date_Added DATE,
  Date_Modified DATE,
  FOREIGN KEY (Branch_ID) REFERENCES Branch(Branch_ID),
  FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID)
);

CREATE TABLE Job_Roles (
  Role_ID varchar(10) PRIMARY KEY,
  Role_Name VARCHAR(50),
  Salary DECIMAL(10, 2)
);

