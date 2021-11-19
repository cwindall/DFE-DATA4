------
Create a database for the tables
------


CREATE DATABASE gamestoredb
USE gamestoredb

-----
Create a table to contain customers details
-----

CREATE TABLE Customers (
    ID INT AUTO_INCREMENT,
    FirstName VARCHAR(12),
    Surname VARCHAR(24) NOT NULL,
    AgeRange ENUM('Under 14','14-15','16-17','18+') DEFAULT '18+',
    Postcode VARCHAR(8) NOT NULL,
    AdditionalRequirements VARCHAR(252) DEFAULT 'None',
    PRIMARY KEY(ID)
    );

-----
Populating the Customers table
-----

INSERT INTO Customers (FirstName, Surname, Postcode, AdditionalRequirements)
    VALUES ('Lorraine','Dickey','BY58KQ','Audio Description required');

INSERT INTO Customers (FirstName,Surname,AgeRange,Postcode)
    VALUES ('Iona','McGlashan','14-15','KP75BO');

INSERT INTO Customers (Surname, Postcode)
    VALUES('Elsbury','VK630PJ');

INSERT INTO Customers (FirstName,Surname,AgeRange,Postcode,Additional Requirements)
    VALUES ('Lisa','Hardy','16-17','KC59JN2', No Flashes);

INSERT INTO Customers (FirstName,Surname,Postcode)
    VALUES ('Ricki','Ostrov','F82JB6');

INSERT INTO Customers (Surname,AgeRange,Postcode)
    VALUES ('Wilkinson','Under 14','VU6D90');

INSERT INTO Customers (FirstName,Surname,AgeRange,Postcode)
    VALUES ('Philip','Chidlow','14-15','CH50MW');

INSERT INTO Customers (FirstName,Surname,Postcode)
    VALUES ('Ralph','Pitchford','HR59NT');

INSERT INTO Customers (FirstName,Surname,AgeRange,Postcode)
    VALUES ('Moira','Pitchford', '16-17','HR59NT');

INSERT INTO Customers (Surname, AgeRange, Postcode)
    Values ('Bullivant','14-15','LF78J43');

INSERT INTO Customers (FirstName,Surname,Postcode,AdditionalRequirements)
    -> VALUES ('Carolyn','King','BS31JF','No Violence');

-----
Completed table
-----

SELECT*FROM Customers;
+----+-----------+-----------+----------+----------+----------------------------+
| ID | FirstName | Surname   | AgeRange | Postcode | AdditionalRequirements     |
+----+-----------+-----------+----------+----------+----------------------------+
|  1 | Lorraine  | Dickey    | 18+      | BY58KQ   | Audio Description required |
|  2 | Iona      | McGlashan | 14-15    | KP75BO   | None                       |
|  3 | NULL      | Elsbury   | 18+      | VK630PJ  | None                       |
|  4 | Lisa      | Hardy     | 16-17    | KC59JN2  | No Flashes                 |
|  5 | Ricki     | Ostrov    | 18+      | F82JB6   | None                       |
|  6 | NULL      | Wilkinson | Under 14 | VU6D90   | None                       |
|  7 | Philip    | Chidlow   | 14-15    | CH50MW   | None                       |
|  8 | Ralph     | Pitchford | 18+      | HR59NT   | None                       |
|  9 | Moira     | Pitchford | 16-17    | HR59NT   | None                       |
| 10 | NULL      | Bullivant | 14-15    | LF78J43  | None                       |
| 11 | Carolyn   | King      | 18+      | BS31JF   | No Violence                |
+----+-----------+-----------+----------+----------+----------------------------+

-----
Creating Stock Table
-----

CREATE TABLE Stock (
    ID INT AUTO_INCREMENT,
    NumUnits INT DEFAULT 0,
    Price DEC(10,2) NOT NULL,
    Rating ENUM('3','14','16','18') DEFAULT '3',
    PRIMARY KEY (ID)
    );

 ALTER TABLE Stock
    ADD Title VARCHAR(252) NOT NULL;

-----
Populating Stock Table
-----

INSERT INTO Stock(NumUnits,Price,Rating,Title)
    VALUES (35,14.99,'14','Overlord');

INSERT INTO Stock(NumUnits,Price,Title)
    VALUES(23,25.39,'The Rye Marshes');

INSERT INTO Stock(NumUnits,Price,Title)
    VALUES (19,8.99,'Room at the Top');

INSERT INTO Stock(NumUnits,Price,Rating,Title)
    VALUES (4,29.99,'18','Birds and Beasts');

INSERT INTO Stock(NumUnits,Price,Rating,Title)
    VALUES (27,31.49,'16','Journey Into Space');

INSERT INTO Stock(NumUnits,Price,Title)
    VALUES (9,15.29,'The Day The Earth Was Out To Lunch');

INSERT INTO Stock(NumUnits,Price,Title)
    VALUES (27,16.99,'The Old Man and The Sea');

INSERT INTO Stock(NumUnits,Price,Title)
    VALUES (26,5.99,'Habitat');

INSERT INTO Stock(NumUnits,Price,Rating,Title)
    VALUES (36,19.99,'14','KIA-ORA');

INSERT INTO Stock(NumUnits,Price,Rating,Title)
    VALUES(13,13.49,'18','Eversharp');

INSERT INTO Stock(NumUnits,Price,Title)
    VALUES (24,19.49,'The King and his Orchestra');

INSERT INTO Stock(NumUnits,Price,Rating,Title)
    VALUES (14,15.89,'16','Eagle');

-----
The completed Stock table
-----

| ID | NumUnits | Price | Rating | Title                              |
+----+----------+-------+--------+------------------------------------+
|  1 |       35 | 14.99 | 14     | Overlord                           |
|  2 |       23 | 25.39 | 3      | The Rye Marshes                    |
|  3 |       19 |  8.99 | 3      | Room at the Top                    |
|  4 |        4 | 29.99 | 18     | Birds and Beasts                   |
|  5 |       27 | 31.49 | 16     | Journey Into Space                 |
|  6 |        9 | 15.29 | 3      | The Day The Earth Was Out To Lunch |
|  7 |       27 | 16.99 | 3      | The Old Man and The Sea            |
|  8 |       26 |  5.99 | 3      | Habitat                            |
|  9 |       36 | 19.99 | 14     | KIA-ORA                            |
| 10 |       13 | 13.49 | 18     | Eversharp                          |
| 11 |       24 | 19.49 | 3      | The King and his Orchestra         |
| 12 |       14 | 15.89 | 16     | Eagle                              |
+----+----------+-------+--------+------------------------------------+

-----
Creating the Orders table
-----

CREATE TABLE Orders (
    ID INT AUTO_INCREMENT,
    CustomerID INT NOT NULL,
    ProductID INT NOT NULL,
    NumUnitsOrdered INT NOT NULL,
    TotalPrice DECIMAL(10,2) NOT NULL,
    OrderDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (ID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(ID),
    FOREIGN KEY (ProductID) REFERENCES Stock(ID)
    );

-----
Populating the Orders table
-----

INSERT INTO Orders (CustomerID,ProductID,NumUnitsOrdered)
    VALUES (2,1,1);

INSERT INTO Orders (CustomerID,ProductID,NumUnitsOrdered)
    VALUES (3,3,3);

INSERT INTO Orders (CustomerID,ProductID,NumUnitsOrdered)
    VALUES (1,10,1);

INSERT INTO Orders (CustomerID,ProductID,NumUnitsOrdered)
    VALUES (6,11,2);

INSERT INTO Orders (CustomerID,ProductID,NumUnitsOrdered)
    VALUES(8,5,2);

INSERT INTO Orders (CustomerID,ProductID,NumUnitsOrdered)
    VALUES(11,4,1);

INSERT INTO Orders (CustomerID,ProductID,NumUnitsOrdered)
    VALUES(10,9,3);

INSERT INTO Orders (CustomerID,ProductID,NumUnitsOrdered)
    VALUES (9,5,1);

INSERT INTO Orders (CustomerID,ProductID,NumUnitsOrdered)
    VALUES (7,7,2);

INSERT INTO Orders (CustomerID,ProductID,NumUnitsOrdered)
    VALUES(4,12,2);

INSERT INTO Orders (CustomerID,ProductID,NumUnitsOrdered)
    VALUES(8,8,1);

INSERT INTO Orders (CustomerID,ProductID,NumUnitsOrdered)
    VALUES (6,6,2);

INSERT INTO Orders (CustomerID,ProductID,NumUnitsOrdered)
    VALUES (10,2,1);

-----
Display the Orders table
-----

SELECT*FROM Orders;
+----+------------+-----------+-----------------+---------------------+
| ID | CustomerID | ProductID | NumUnitsOrdered | OrderDate           |
+----+------------+-----------+-----------------+---------------------+
|  1 |          5 |         4 |               2 | 2021-11-10 12:04:03 |
|  2 |          2 |         1 |               1 | 2021-11-10 12:05:12 |
|  3 |          3 |         3 |               3 | 2021-11-10 12:05:39 |
|  4 |          1 |        10 |               1 | 2021-11-10 12:05:56 |
|  5 |          6 |        11 |               2 | 2021-11-10 12:06:21 |
|  6 |          8 |         5 |               2 | 2021-11-10 12:06:41 |
|  7 |         11 |         4 |               1 | 2021-11-10 12:07:04 |
|  8 |         10 |         9 |               3 | 2021-11-10 12:07:25 |
|  9 |          9 |         5 |               1 | 2021-11-10 12:08:00 |
| 10 |          7 |         7 |               2 | 2021-11-10 12:08:23 |
| 11 |          4 |        12 |               2 | 2021-11-10 12:10:02 |
| 12 |          8 |         8 |               1 | 2021-11-10 12:10:48 |
| 13 |          6 |         6 |               2 | 2021-11-10 12:11:16 |
| 14 |         10 |         2 |               1 | 2021-11-10 12:11:29 |
+----+------------+-----------+-----------------+---------------------+

-----
Creating a more detailed table with order and delivery details
-----

CREATE VIEW DeliveryView AS SELECT Orders.ID, Stock.Title, Stock.Price, Orders.NumUnitsOrdered, Stock.Price*Orders.NumUnitsOrdered AS TotalPrice, CONCAT(Customers.Surname,', ',Customers.Postcode) AS DeliveryAddress FROM Orders LEFT JOIN Stock ON Orders.ProductID=Stock.ID LEFT JOIN Customers ON Customers.ID=Orders.CustomerID;

-----
Viewing the DeliveryView Table
-----

 SELECT * FROM DeliveryView;
+----+------------------------------------+-------+-----------------+------------+--------------------+
| ID | Title                              | Price | NumUnitsOrdered | TotalPrice | DeliveryAddress    |
+----+------------------------------------+-------+-----------------+------------+--------------------+
|  1 | Birds and Beasts                   | 29.99 |               2 |      59.98 | Ostrov, F82JB6     |
|  2 | Overlord                           | 14.99 |               1 |      14.99 | McGlashan, KP75BO  |
|  3 | Room at the Top                    |  8.99 |               3 |      26.97 | Elsbury, VK630PJ   |
|  4 | Eversharp                          | 13.49 |               1 |      13.49 | Dickey, BY58KQ     |
|  5 | The King and his Orchestra         | 19.49 |               2 |      38.98 | Wilkinson, VU6D90  |
|  6 | Journey Into Space                 | 31.49 |               2 |      62.98 | Pitchford, HR59NT  |
|  7 | Birds and Beasts                   | 29.99 |               1 |      29.99 | King, BS31JF       |
|  8 | KIA-ORA                            | 19.99 |               3 |      59.97 | Bullivant, LF78J43 |
|  9 | Journey Into Space                 | 31.49 |               1 |      31.49 | Pitchford, HR59NT  |
| 10 | The Old Man and The Sea            | 16.99 |               2 |      33.98 | Chidlow, CH50MW    |
| 11 | Eagle                              | 15.89 |               2 |      31.78 | Hardy, KC59JN2     |
| 12 | Habitat                            |  5.99 |               1 |       5.99 | Pitchford, HR59NT  |
| 13 | The Day The Earth Was Out To Lunch | 15.29 |               2 |      30.58 | Wilkinson, VU6D90  |
| 14 | The Rye Marshes                    | 25.39 |               1 |      25.39 | Bullivant, LF78J43 |
+----+------------------------------------+-------+-----------------+------------+--------------------+

