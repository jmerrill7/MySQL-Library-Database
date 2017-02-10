USE MASTER
GO
CREATE DATABASE LibraryProject
GO
USE LibraryProject
GO
CREATE TABLE tblBOOK
(
BookID bigint NOT NULL,
Title varchar(100) NOT NULL,
PublisherName varchar(100) NOT NULL,
PRIMARY KEY (BookID)
)
GO
CREATE TABLE tblBOOK_AUTHORS
(
BookID bigint NOT NULL,
AuthorName varchar(100) NOT NULL,
PRIMARY KEY (BookID)
)
GO
CREATE TABLE tblPUBLISHER
(
Name varchar(100) NOT NULL,
Address varchar(100) NOT NULL,
Phone bigint NOT NULL,
PRIMARY KEY (Name)
)
GO
CREATE TABLE tblBOOK_COPIES
(
BookID bigint NOT NULL,
BranchID int NOT NULL,
No_of_Copies int NOT NULL,
)
GO
CREATE TABLE tblBOOK_LOANS
(
BookID bigint NOT NULL,
BranchID int NOT NULL,
CardNo int NOT NULL,
DateOut varchar(100) NOT NULL,
DueDate varchar(100) NOT NULL
)
GO
CREATE TABLE tblLIBRARY_BRANCH
(
BranchID int NOT NULL,
BranchName varchar(100) NOT NULL,
Address varchar(100) NOT NULL
PRIMARY KEY (BranchID)
)
GO
CREATE TABLE tblBORROWER
(
CardNo int NOT NULL,
Name varchar (100) NOT NULL,
Address varchar(100) NOT NULL,
Phone bigint NOT NULL,
PRIMARY KEY (CardNo)
)
GO
INSERT INTO tblBOOK
VALUES
(001,'The Lost Tribe','Oxford'),
(002,'The Lord of the Rings','George Allen & Unwin'),
(003,'Harry Potter','Bloomsbury Publishing'),
(004,'Game of Thrones','Bantam Spectra'),
(005,'A Series of Unfortunate Events','Harper Collins'),
(006,'The Da Vinci Code','Doubleday'),
(007,'Ender''s Game','Tor Books'),
(008,'The Sword of Shannara','Del Rey Books'),
(009,'The Shining','Viking Press'),
(010,'Term Limits','Simon & Schuster'),
(011,'The Hobbit','George Allen & Unwin'),
(012,'Harry Potter & The Prisoner of Azkaban','Bloomsbury Publishing'),
(013,'Clash of Kings','Bantam Spectra'),
(014,'Angels & Demons','Doubleday'),
(015,'The Heritage of Shannara','Del Rey Books'),
(016,'Protect & Defend','Simon & Schuster'),
(017,'The Silmarillion',' George Allen & Unwin'),
(018,'Inferno','Doubleday'),
(019,'It','Viking Press'),
(020,'The Survivor','Simon & Schulster')
GO
INSERT INTO tblBOOK_AUTHORS
VALUES
(001,'Jane Smith'),
(002,'JRR Tolkien'),
(003,'JK Rowling'),
(004,'George Martin'),
(005,'Lemony Snickett'),
(006,'Dan Brown'),
(007,'Orson Scott Card'),
(008,'Terry Brooks'),
(009,'Stephen King'),
(010,'Vince Flynn'),
(011,'JRR Tolkien'),
(012,'JK Rowling'),
(013,'George Martin'),
(014,'Dan Brown'),
(015,'Terry Brooks'),
(016,'Vince Flynn'),
(017,'JRR Tolkien'),
(018,'Dan Brown'),
(019,'Stephen King'),
(020,'Vince Flynn')
GO
INSERT INTO tblPUBLISHER
VALUES
('Oxford','London, United Kingdom',1782356891),
('George Allen & Unwin','Melbourne, Australia',1256798762),
('Bloomsbury Publishing','Dublin, Ireland',2769812451),
('Bantam Spectra','New York City, USA',2358760912),
('Harper Collins','Nottingham, United Kingdom',2781234562),
('Doubleday','Toronto, Canada',1876539082),
('Tor Books','Seattle, USA',7892351762),
('Del Rey Books','Stockholm, Sweden',4579823461),
('Viking Press','Minneapolis, USA',2985638123),
('Simon & Schuster', 'Hamburg, Germany',1234567890)
GO
INSERT INTO tblBOOK_COPIES
VALUES
(001,1,2),
(001,2,2),
(001,3,2),
(001,4,2),
(002,1,2),
(002,2,2),
(002,3,2),
(002,4,2),
(003,1,2),
(003,2,2),
(003,3,2),
(003,4,2),
(004,1,2),
(004,2,2),
(004,3,2),
(004,4,2),
(005,1,2),
(005,2,2),
(005,3,2),
(005,4,2),
(007,1,2),
(007,2,2),
(007,3,2),
(007,4,2),
(008,1,2),
(008,2,2),
(008,3,2),
(008,4,2),
(009,1,2),
(009,2,2),
(009,3,2),
(009,4,2),
(010,1,2),
(010,2,2),
(010,3,2),
(010,4,2),
(011,1,2),
(011,2,2),
(011,3,2),
(011,4,2),
(012,1,2),
(012,2,2),
(012,3,2),
(012,4,2),
(013,1,2),
(013,2,2),
(013,3,2),
(013,4,2),
(014,1,2),
(014,2,2),
(014,3,2),
(014,4,2),
(015,1,2),
(015,2,2),
(015,3,2),
(015,4,2),
(016,1,2),
(016,2,2),
(016,3,2),
(016,4,2),
(017,1,2),
(017,2,2),
(017,3,2),
(017,4,2),
(018,1,2),
(018,2,2),
(018,3,2),
(018,4,2),
(019,1,2),
(019,2,2),
(019,3,2),
(019,4,2),
(020,1,2),
(020,2,2),
(020,3,2),
(020,4,2)
GO
INSERT INTO tblBOOK_LOANS
VALUES
(001,1,28,'2/23/2017','3/23/2017'),
(002,2,27,'1/20/2017','2/23/2017'),
(003,3,26,'1/19/2017','2/19/2017'),
(004,4,25,'2/26/2017','3/26/2017'),
(005,1,24,'1/13/2017','2/13/2017'),
(006,2,23,'2/30/2017','3/30/2017'),
(007,3,22,'1/12/2017','2/12/2017'),
(008,4,28,'2/25/2017','3/25/2017'),
(009,1,28,'1/30/2017','2/30/2017'),
(010,2,27,'1/14/2017','2/14/2017'),
(011,3,26,'2/15/2017','2/15/2017'),
(012,4,25,'2/17/2017','3/17/2017'),
(013,1,24,'1/2/2017','2/2/2017'),
(014,2,23,'1/7/2017','2/7/2017'),
(015,3,22,'2/8/2017','3/8/2017'),
(016,4,26,'1/4/2017','2/4/2017'),
(017,1,28,'2/23/2017','3/23/2017'),
(018,2,27,'1/23/2017','2/23/2017'),
(019,3,26,'2/12/2017','3/12/2017'),
(001,1,24,'1/9/2017','2/9/2017'),
(002,2,23,'2/19/2017','3/19/2017'),
(003,3,22,'1/12/2017','2/12/2017'),
(004,4,24,'2/15/2017','3/15/2017'),
(005,1,28,'2/20/2017','3/20/2017'),
(006,2,27,'2/23/2017','3/23/2017'),
(007,3,26,'2/8/2017','3/8/2017'),
(008,4,25,'1/20/2017','2/23/2017'),
(009,1,24,'2/13/2017','3/13/2017'),
(010,2,23,'2/14/2017','3/14/2017'),
(011,3,22,'1/3/2017','2/3/2017'),
(012,4,27,'2/12/2017','3/12/2017'),
(013,1,28,'1/9/2017','2/9/2017'),
(014,2,27,'1/13/2017','2/13/2017'),
(015,3,26,'1/24/2017','2/24/2017'),
(016,4,25,'2/30/2017','3/30/1017'),
(017,1,24,'1/10/2017','2/10/2017'),
(018,2,23,'2/12/2017','3/12/2017'),
(019,3,22,'1/1/2017','2/1/2017'),
(020,4,22,'2/14/2017','3/14/2017'),
(001,1,28,'1/12/2017','2/12/2017'),
(002,2,27,'2/12/2017','2/30/2017'),
(003,3,26,'1/11/2017','2/11/2017'),
(004,4,25,'2/10/2017','3/10/2017'),
(005,1,24,'1/4/2017','2/4/2017'),
(006,2,23,'2/24/2017','3/24/2017'),
(007,3,22,'1/3/2017','2/3/2017'),
(008,4,23,'2/2/2017','3/2/2017'),
(009,1,28,'1/2/2017','2/2/2017'),
(010,2,27,'1/28/2017','2/28/2017')
GO
INSERT INTO tblLIBRARY_BRANCH
VALUES
(1,'Sharpstown','198 Moose Creek Blvd. Victor, ID'),
(2,'Snake River','22 River Way. Victor, ID'),
(3,'Central','45 Downtown St. Victor, ID'),
(4,'Targhee','17 Black Diamond St. Victor, ID')
GO
INSERT INTO tblBORROWER
VALUES
(21,'Ryan Banks','228 Bellevue Dr. Fort Walton Beach, FL 32547',4562487098),
(22,'Lewis Price','8211 Morris Dr. Defiance, OH 43512',1456823454),
(23,'Jimmy Austin','345 West Gulf Ave. Lowell, MA 01851',2875436789),
(24,'Ellie Rivera','8634 Mammoth Ave. Atlanta, GA 30303',3453215687),
(25,'Edward Holloway','173 Ivy Rd. Conway, SC 29526',9386374920),
(26,'Joanne Harper','4 Hall Ave. Racine, WI 53402',1728392874),
(27,'Julia Kelley','42 South Ave. Anchorage, AK 99504',2983673092),
(28,'Mimi Hawkins','9845 Brandywine St. Olympia, WA 98512',2878399120)
GO

/*Individual Table Select Template*/
SELECT * FROM tblBOOK
SELECT * FROM tblLIBRARY_BRANCH
SELECT * FROM tblBOOK_COPIES
SELECT * FROM tblBOOK_AUTHORS
SELECT * FROM tblBOOK_LOANS
SELECT * FROM tblBORROWER
SELECT * FROM tblPUBLISHER
 
/*How many copies of the book titled The Lost Tribe are owned by the library branch whose name
is"Sharpstown"?*/
SELECT B.Title, C.No_of_Copies, L.BranchName
FROM tblBOOK AS B
LEFT OUTER JOIN tblBOOK_COPIES AS C
ON B.BookID = C.BookID
RIGHT OUTER JOIN tblLIBRARY_BRANCH AS L
ON C.BranchID = L.BranchID
WHERE L.BranchName = 'Sharpstown'
AND B.Title = 'The Lost Tribe'

/*How many copies of the book titled The Lost Tribe are owned by each library branch?
*/
SELECT B.Title, C.No_of_Copies, L.BranchName
FROM tblLIBRARY_BRANCH AS L
INNER JOIN tblBOOK_COPIES AS C
ON L.BranchID = C.BranchID
RIGHT OUTER JOIN tblBOOK AS B
ON B.BookID = C.BookID
WHERE B.Title = 'The Lost Tribe'

/* Retrieve the names of all borrowers who do not have any books checked out. */
SELECT BO.CardNo, BO.Name
FROM tblBORROWER AS BO
LEFT OUTER JOIN tblBOOK_LOANS AS LO
ON BO.CardNo = LO.CardNo
WHERE LO.CardNo IS NULL

/* For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today,
retrieve the book title, the borrower's name, and the borrower's address.*/
SELECT B.Title, BO.Name, BO.Address 
FROM tblBOOK AS B
INNER JOIN tblBOOK_LOANS AS LO
ON B.BookID = LO.BookID
INNER JOIN tblLIBRARY_BRANCH AS L
ON LO.BranchID = L.BranchID
INNER JOIN tblBORROWER AS BO
ON BO.CardNo = LO.CardNo
WHERE LO.DueDate = '2/9/2017'
AND L.BranchName = 'Sharpstown'

/*For each library branch, retrieve the branch name and the total number of books loaned out from
that branch.*/
SELECT L.BranchName, COUNT(*)
FROM tblLIBRARY_BRANCH AS L, tblBOOK_LOANS AS LO
WHERE L.BranchID = LO.BranchID
GROUP BY L.BranchName

/*Retrieve the names, addresses, and number of books checked out for all borrowers who have more
than five books checked out*/
SELECT BO.Name, BO.Address, COUNT(*)
FROM tblBORROWER AS BO, tblBOOK_LOANS AS LO
WHERE BO.CardNo = LO.CardNo
GROUP BY BO.CardNo, BO.Name, BO.Address
HAVING COUNT(*) > 5

/*For each book authored (or co-authored) by "Stephen King", retrieve the title and the number of
copies owned by the library branch whose name is "Central"*/
SELECT B.Title, A.AuthorName, C.No_of_Copies, L.BranchName
FROM tblBOOK_AUTHORS AS A
INNER JOIN tblBOOK_COPIES AS C
ON A.BookID = C.BookID
INNER JOIN tblBOOK AS B
ON A.BookID = B.BookID
INNER JOIN tblLIBRARY_BRANCH AS L
ON C.BranchID = L.BranchID
WHERE A.AuthorName = 'Stephen King'

---------------------------------
-- PROCEDURE CREATION EXECUTABLES
---------------------------------

CREATE PROCEDURE dbo.uspLostTribeSharpstown
AS
SELECT B.Title, C.No_of_Copies, L.BranchName
FROM tblBOOK AS B
LEFT OUTER JOIN tblBOOK_COPIES AS C
ON B.BookID = C.BookID
RIGHT OUTER JOIN tblLIBRARY_BRANCH AS L
ON C.BranchID = L.BranchID
WHERE L.BranchName = 'Sharpstown'
AND B.Title = 'The Lost Tribe'
GO

CREATE PROCEDURE dbo.uspLostTribeAllBranches
AS
SELECT B.Title, C.No_of_Copies, L.BranchName
FROM tblLIBRARY_BRANCH AS L
INNER JOIN tblBOOK_COPIES AS C
ON L.BranchID = C.BranchID
RIGHT OUTER JOIN tblBOOK AS B
ON B.BookID = C.BookID
WHERE B.Title = 'The Lost Tribe'
GO

CREATE PROCEDURE dbo.uspBorrowerNullBooks
AS
SELECT BO.CardNo, BO.Name
FROM tblBORROWER AS BO
LEFT OUTER JOIN tblBOOK_LOANS AS LO
ON BO.CardNo = LO.CardNo
WHERE LO.CardNo IS NULL
GO

CREATE PROCEDURE dbo.uspSharpstownDueFeb9
AS
SELECT B.Title, BO.Name, BO.Address 
FROM tblBOOK AS B
INNER JOIN tblBOOK_LOANS AS LO
ON B.BookID = LO.BookID
INNER JOIN tblLIBRARY_BRANCH AS L
ON LO.BranchID = L.BranchID
INNER JOIN tblBORROWER AS BO
ON BO.CardNo = LO.CardNo
WHERE LO.DueDate = '2/9/2017'
AND L.BranchName = 'Sharpstown'
GO

CREATE PROCEDURE dbo.uspBranchLoanCount
AS
SELECT L.BranchName, COUNT(*)
FROM tblLIBRARY_BRANCH AS L, tblBOOK_LOANS AS LO
WHERE L.BranchID = LO.BranchID
GROUP BY L.BranchName
GO

CREATE PROCEDURE dbo.uspBorrowedBooksFivePlus
AS
SELECT BO.Name, BO.Address, COUNT(*)
FROM tblBORROWER AS BO, tblBOOK_LOANS AS LO
WHERE BO.CardNo = LO.CardNo
GROUP BY BO.CardNo, BO.Name, BO.Address
HAVING COUNT(*) > 5
GO

CREATE PROCEDURE dbo.uspFindStephenKingCentral
AS
SELECT B.Title, A.AuthorName, C.No_of_Copies, L.BranchName
FROM tblBOOK_AUTHORS AS A
INNER JOIN tblBOOK_COPIES AS C
ON A.BookID = C.BookID
INNER JOIN tblBOOK AS B
ON A.BookID = B.BookID
INNER JOIN tblLIBRARY_BRANCH AS L
ON C.BranchID = L.BranchID
WHERE A.AuthorName = 'Stephen King'
GO