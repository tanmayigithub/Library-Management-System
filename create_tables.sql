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

/* Add other table creation statements here */

