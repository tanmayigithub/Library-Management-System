SELECT * FROM Books;
SELECT Author,Title, ISBN,Genre, Publisher FROM Books where Author="Harper Lee";
SELECT Book_ID,Title,ISBN,Genre,Publisher,Publication where Genre="Classic";
SELECT * FROM Branch;
SELECT * FROM Book_Copies;
SELECT * FROM Members;
SELECT * FROM Checkout;
SELECT * FROM Fine;
SELECT * FROM Inventory;
SELECT * FROM Job_Roles;
drop database books;
